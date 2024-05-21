
//--------------------------------------------------------------------
// Modal Synthesis of a Linear Circular Membrane
// this script computes the filterbank coefficients and modal weights
// given the physical parametres of the membrane
//--------------------------------------------------------------------

//--------------------------------------------------------------------
var maxfreq = 12000;
var nmodes = 150;
var samplerate = 44100;
var posIn = 0.25;
var posOut = 0.1;

// frequency-independent damping
var damp = 0.5;

// frequency-dependent damping
var damp2 = 0.0;

// dispersion coefficient
var dispersion = 0.0;

// radius
var R = 0.3;

// tension
var tension = 400.0;

// area density (rho * thickness)
var sigma = 1.0;

var pi = 3.141592;
var twopi = 2*pi;

var freqs = new Buffer("freqs");
var Win = new Buffer("Win");
var Wout = new Buffer("Wout");
var B1 = new Buffer("B1");
var A1 = new Buffer("A1");
var A2 = new Buffer("A2");


/* from bessel.js (C) 2013-present SheetJS -- http://sheetjs.com */
/* vim: set ts=2: */

var M = Math;

function _horner(arr, v) { for(var i = 0, z = 0; i < arr.length; ++i) z = v * z + arr[i]; return z; }

function _bessel_iter(x, n, f0, f1, sign) {
  if(n === 0) return f0;
  if(n === 1) return f1;
  var tdx = 2 / x, f2 = f1;
  for(var o = 1; o < n; ++o) {
    f2 = f1 * o * tdx + sign * f0;
    f0 = f1; f1 = f2;
  }
  return f2;
}

var besselj = (function() {
  var W = 0.636619772; // 2 / Math.PI

  var b0_a1a = [57568490574.0, -13362590354.0, 651619640.7, -11214424.18, 77392.33017, -184.9052456].reverse();
  var b0_a2a = [57568490411.0, 1029532985.0, 9494680.718, 59272.64853, 267.8532712, 1.0].reverse();
  var b0_a1b = [1.0, -0.1098628627e-2, 0.2734510407e-4, -0.2073370639e-5, 0.2093887211e-6].reverse();
  var b0_a2b = [-0.1562499995e-1, 0.1430488765e-3, -0.6911147651e-5, 0.7621095161e-6, -0.934935152e-7].reverse();

  function bessel0(x) {
    var a=0, a1=0, a2=0, y = x * x;
    if(x < 8) {
      a1 = _horner(b0_a1a, y);
      a2 = _horner(b0_a2a, y);
      a = a1 / a2;
    } else {
      var xx = x - 0.785398164;
      y = 64 / y;
      a1 = _horner(b0_a1b, y);
      a2 = _horner(b0_a2b, y);
      a = M.sqrt(W/x)*(M.cos(xx)*a1-M.sin(xx)*a2*8/x);
    }
    return a;
  }

  var b1_a1a = [72362614232.0, -7895059235.0, 242396853.1, -2972611.439, 15704.48260, -30.16036606].reverse();
  var b1_a2a = [144725228442.0, 2300535178.0, 18583304.74, 99447.43394, 376.9991397, 1.0].reverse();
  var b1_a1b = [1.0, 0.183105e-2, -0.3516396496e-4, 0.2457520174e-5, -0.240337019e-6].reverse();
  var b1_a2b = [0.04687499995, -0.2002690873e-3, 0.8449199096e-5, -0.88228987e-6, 0.105787412e-6].reverse();

  function bessel1(x) {
    var a=0, a1=0, a2=0, y = x*x, xx = M.abs(x) - 2.356194491;
    if(Math.abs(x)< 8) {
      a1 = x*_horner(b1_a1a, y);
      a2 = _horner(b1_a2a, y);
      a = a1 / a2;
    } else {
      y = 64 / y;
      a1=_horner(b1_a1b, y);
      a2=_horner(b1_a2b, y);
      a=M.sqrt(W/M.abs(x))*(M.cos(xx)*a1-M.sin(xx)*a2*8/M.abs(x));
      if(x < 0) a = -a;
    }
    return a;
  }

  return function besselj(x, n) {
    n = Math.round(n);
    if(!isFinite(x)) return isNaN(x) ? x : 0;
    if(n < 0) return ((n%2)?-1:1)*besselj(x, -n);
    if(x < 0) return ((n%2)?-1:1)*besselj(-x, n);
    if(n === 0) return bessel0(x);
    if(n === 1) return bessel1(x);
    if(x === 0) return 0;

    var ret=0.0;
    if(x > n) {
      ret = _bessel_iter(x, n, bessel0(x), bessel1(x),-1);
    } else {
      var m=2*M.floor((n+M.floor(M.sqrt(40*n)))/2);
      var jsum=false;
      var bjp=0.0, sum=0.0;
      var bj=1.0, bjm = 0.0;
      var tox = 2 / x;
      for (var j=m;j>0;j--) {
        bjm=j*tox*bj-bjp;
        bjp=bj;
        bj=bjm;
        if (M.abs(bj) > 1E10) {
          bj *= 1E-10;
          bjp *= 1E-10;
          ret *= 1E-10;
          sum *= 1E-10;
        }
        if (jsum) sum += bj;
        jsum=!jsum;
        if (j == n) ret=bjp;
      }
      sum=2.0*sum-bj;
      ret /= sum;
    }
    return ret;
  };
})();

//--------------------------------------------------------------------
cTabBesselOrders = [ 0	,1	,2	,0	,3	,1	,4	,2	,0	,5	,
3	,6	,1	,4	,7	,2	,0	,8	,5	,3	,
1	,9	,6	,4	,10	,2	,7	,0	,11	,5	,
8	,3	,1	,12	,6	,9	,4	,13	,2	,0	,
7	,10	,14	,5	,3	,8	,1	,11	,15	,6	,
12	,9	,4	,16	,2	,0	,7	,13	,10	,17	,
5	,3	,1	,8	,14	,18	,11	,6	,4	,9	,
15	,2	,19	,0	,12	,7	,16	,20	,5	,10	,
13	,3	,1	,8	,21	,17	,11	,6	,14	,4	,
2	,0	,22	,9	,18	,12	,15	,7	,5	,23	,
19	,10	,3	,1	,13	,16	,8	,24	,20	,6	,
11	,4	,17	,14	,2	,0	,25	,9	,21	,7	,
12	,18	,15	,5	,26	,3	,1	,22	,10	,13	,
8	,19	,27	,16	,6	,23	,11	,4	,2	,0	,
28	,20	,14	,9	,17	,24	,7	,12	,5	,29	];

cTabBesselAutovalues = [ 2.4048,3.8317,5.1356,5.5201,6.3802,7.0156,7.5883,8.4172,8.6537,8.7715,
9.761,9.9361,10.1735,11.0647,11.0864,11.6198,11.7915,12.2251,12.3386,13.0152,
13.3237,13.3543,13.5893,14.3725,14.4755,14.796,14.8213,14.9309,15.5898,15.7002,
16.0378,16.2235,16.4706,16.6982,17.0038,17.2412,17.616,17.8014,17.9598,18.0711,
18.2876,18.4335,18.9,18.9801,19.4094,19.5545,19.6159,19.616,19.9944,20.3208,
20.7899,20.807,20.8269,21.0851,21.117,21.2116,21.6415,21.9562,22.047,22.1725,
22.2178,22.5827,22.7601,22.9452,23.1158,23.2568,23.2759,23.5861,24.019,24.2339,
24.2692,24.2701,24.3382,24.3525,24.4949,24.9349,25.417,25.4171,25.4303,25.5095,
25.7051,25.7482,25.9037,26.2668,26.4936,26.5598,26.7733,26.8202,26.9074,27.1991,
27.4206,27.4935,27.5679,27.5837,27.6979,28.0267,28.1024,28.1912,28.6266,28.6402,
28.8317,28.8874,28.9084,29.0468,29.2706,29.2909,29.5457,29.7105,29.9616,30.0337,
30.1791,30.371,30.4733,30.506,30.5692,30.6346,30.779,30.8854,31.0878,31.4228,
31.46,31.6501,31.7334,31.8117,31.8459,32.0649,32.1897,32.2106,32.2119,32.7311,
32.7958,32.8218,32.9112,32.9537,33.233,33.3302,33.5264,33.5371,33.7165,33.7758,
33.9749,33.9887,33.9932,34.1544,34.1673,34.4468,34.6371,34.83,34.9888,35.0373 ];


function bang(){
	
	var c2 = tension / sigma;
	
	for(var n = 0; n < nmodes; ++n) {
		
		var mu,order,fc,omega,d,Q,bw,a1,a2,b1,x1,x2,vWin,vWout;
		
		// load mode order and autovalue (µ)
		mu = cTabBesselAutovalues[n];
		order = cTabBesselOrders[n];
		
		// compute mode frequency
		mur2 = Math.pow(mu/radius,2);
		omega = Math.sqrt( mur2 * ( dispersion * mur2 + c2 ) );
		
		fc = omega/twopi;
		
		
		if (fc > maxfreq) {
			//disable mode if above maxfreq
			fc = 0;
			b1 = 0;
			a1 = 0;
			a2 = 0;
			vWin=0;
			vWout=0;
		}
		else{
			
			// compute decay with square law vs freq
			d = damp + damp2 * Math.pow(fc / samplerate,2);
			
			// compute filter gain factor
			Q = 0.5 / Math.max(0.00001,d);
			
			// compute bandwidth
			bw = fc / Q;
			
			// compute poles radius
			r = Math.exp(-twopi/samplerate*bw); 
			
			// calculate coefficients
			a1 =  2.0 * r  * Math.cos( omega / samplerate );
		    a2 = - r*r;
		    b1 = 1 - ((a2 + a1));
			
			
		    // modal weights     
		    x1 = mu * posIn * radius;
            vWin = besselj( order, x1 );     
		    x2 = mu * posOut * radius;
            vWout = besselj( order, x2 );   
			
			//post("mode (ind, freq):", n, fc ); post("\n")  
		}
		
		// save mode coefficients
		Win.poke(0,n, vWin);
		Wout.poke(0,n, vWout);
		B1.poke(0,n, b1);
		A1.poke(0,n, a1);
		A2.poke(0,n, a2);
		freqs.poke(0,n,fc/samplerate*2);	
	}
	
	//post("recompute modes: done.");
}


function anything()
{
	var a = arrayfromargs(messagename, arguments);
	
	myval = a;
	if (a[0]=='nmodes') nmodes=a[1];
	if (a[0]=='samplerate') samplerate=a[1];
	if (a[0]=='damp') damp=a[1];
	if (a[0]=='damp2') damp2=a[1];
	if (a[0]=='radius') radius=a[1];
	if (a[0]=='tension') tension=a[1];
	if (a[0]=='dispersion') dispersion=a[1];
	if (a[0]=='posIn') posIn=a[1];
	if (a[0]=='posOut') posOut=a[1];
	
	bang();
	
}