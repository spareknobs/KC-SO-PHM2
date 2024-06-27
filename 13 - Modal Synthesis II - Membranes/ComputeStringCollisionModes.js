
var pi = 3.141592;
var twopi = 2*pi;

var maxfreq = 12000;
var nmodes = 80;
var samplerate = 44100;

var pickupPos = 0.25;
var pluckPos = 0.1;
var collisionPos=0.87;

// frequency-independent damping
var damp = 0.5;

// frequency-dependent damping
var damp2 = 0.0;

var dispersion = 0.0;

// string length
var L = 0.84;

// tuning
var f0 = 120.0;

// string diameter
var dia = 0.001;

// string cross-section area (m2)
var Area = dia*dia/4 * pi;

// Material Density (Kg/m3) 7700 - 8000  (steel
var density = 5500;  

// density per unit length
var sigma = density * Area;   

var freqs = new Buffer("freqs");
var Win = new Buffer("Win");
var Wout = new Buffer("Wout");
var CWin = new Buffer("CWin");
var CWout = new Buffer("CWout");
var B1 = new Buffer("B1");
var A1 = new Buffer("A1");
var A2 = new Buffer("A2");


function bang(){
	
	for (i=0; i<nmodes; i+= 1) 
	{
		L = Math.max(L,0.1);
		
		g = (i+1) * pi / L;
		
		// mode freq
		fc = f0 * (i+1); 
		
		// add dispersion
		fc +=  dispersion * g * g / ( 2*pi);
		        
		if (fc > maxfreq) {
			//disable mode if above maxfreq
			fc = 0;
			b1 = 0;
			a1 = 0;
			a2 = 0;
			vWin=0;
			vWout=0;
			vCWin=0;
			vcWout=0;
		}
		else{
			
			omega = fc * twopi;
			
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
		    b1 = 1 / (samplerate*samplerate) / sigma;
			
			// modal weights (K/Knorm)
			vWin =  2.0 / L * Math.sin( pluckPos * g );
    		vWout =  Math.sin( pickupPos * g );

			vCWin =  2.0 / L * Math.sin( collisionPos * g );
			vCWout = Math.sin( collisionPos * g );
		}
		
		// save mode coefficients
		Win.poke(0,i, vWin);
		Wout.poke(0,i, vWout);
		CWin.poke(0,i, vCWin);
		CWout.poke(0,i, vCWout);
		B1.poke(0,i, b1);
		A1.poke(0,i, a1);
		A2.poke(0,i, a2);
		freqs.poke(0,i,fc/samplerate*2);
	}
		
}

function anything()
{
	var a = arrayfromargs(messagename, arguments);
	
	myval = a;
	
	if (a[0]=='nmodes') nmodes=a[1];
	if (a[0]=='samplerate') samplerate=a[1];
	if (a[0]=='damp') damp=a[1];
	if (a[0]=='damp2') damp2=a[1];
	if (a[0]=='dispersion') dispersion=a[1];
	if (a[0]=='length') L=a[1];
	if (a[0]=='tuning') f0=a[1];
	if (a[0]=='pluckPos') pluckPos=a[1];
	if (a[0]=='pickupPos') pickupPos=a[1];
	if (a[0]=='collisionPos') collisionPos=a[1];
	
	bang();
	
}