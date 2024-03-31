
/*
// Simple Motion Simulation of a Point-like Mass + Spring
// with Euler's Forward scheme
// The 2D space is normalized 0..1
*/

// set up inlets/outlets/assist strings
outlets = 2;
setinletassist(0,"bang calculates one iteration of simulation");
setoutletassist(0,"mass x/y/vx/vy ");
setoutletassist(1,"bang to clear and redraw");

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// global varables

// Time Step (s)
var T = 0.01;

// initialize the mass position and velocity
// at the centre of the screen
var x = 0.5;
var y = 0.3;

// init velocity to zero
var vx = 0;
var vy = 0;

// mass
var Mass = 0.01;

// damping coefficient
var Damp = 0.0;

// spring coefficient
var Stiff = 0.1;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Simulation Step
// called at each bang
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function bang()
{
	// update position (only along y):
	y += vy * T;
	
	// compute friction force
	var Fd = -vy * Damp;
	
	// compute spring force
	var Fs = -y * Stiff;
	
	// compute the sum of forces applied to the mass
	var Fy = Fs + Fd;
	
	// update velocity: v[n] = v[n-1] + F[n-1] * T / m
	vy = vy + Fy * T / Mass; 
		
	// send a band to clear the canvas
	outlet(1,"bang");
	
	// send the mass status - we translate here y by 0.5 to center the view
	outlet(0,x,y+0.5,vx,vy);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Auxiliary functions - called by proper input messages
function reset()
{
	x = 0.5;
	y = 0.3;
	vx = 0;
	vy= 0;
}

function timestep(v)
{
	T = v;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// utility functions

function clip(x,min,max)
{	
	return Math.min(Math.max(x,min),max);
}

function damp(v)
{
	Damp = clip(v,0,10);
}

function stiff(v)
{
	Stiff = clip(v,0,10);
}

function mass(v)
{
	Mass = clip(v,0,10);
}
