
var buf = new Buffer("frictforce");
var fc = 0.1;  //coulomb
var fs = 0.9; //stribeck
var vs = 0.1;

function bang(){
for (n=0; n<200; n++){
	var v = n/200-0.5;
	var f = ( fc + (fs-fc) * Math.exp( -Math.pow( v/vs, 2) ) );
	if (v<0) f *= -1;
		
	buf.poke(0, n, f);
	}
}


function anything()
{
	var a = arrayfromargs(messagename, arguments);
	
	myval = a;
	if (a[0]=='mud') fc=a[1];
	if (a[0]=='mus') fs=a[1];
	if (a[0]=='vs') vs=a[1];
	
	bang();
	
}