
/*
// Simple Motion Simulation of a Point-like Mass + Friction
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

// external force components
var Fext_x = 0.0;
var Fext_y = 0.0;

// Time Step (s)
var T = 0.02;

// initialize the ball position and velocity
// at the centre of the screen
var x = 0.5;
var y = 0.5;

// init velocity to zero
var vx = 0;
var vy = 0;

// mass
var m = 0.01;

// damping coefficient
var Damp = 0;


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Simulation Step
// called at each bang
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function bang()
{
	// update position: x[n] = x[n-1] + v[n-1] * T
	x += vx * T;
	y += vy * T;
	
	var c = (1+T/m*Damp);
	
	// compute the sum of forces applied to the ball
	var Fx = Fext_x ;
	var Fy = Fext_y ;
	
	// update velocity: v[n] = v[n-1] + F[n-1] * T / m
	vx = ( vx + Fx * T / m ) / c; 
	vy = ( vy + Fy * T / m ) / c; 
		
	// wrap around the screen ('80s style)
	//wrap();
	
	// or bounce
	bounce(); 
	
	// send a band to clear the canvas
	outlet(1,"bang");
	
	// send the ball status
	outlet(0,x,y,vx,vy);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Auxiliary functions - called by proper input messages
function reset()
{
	x = 0.5;
	y = 0.5;
	vx = 0;
	vy= 0;
}

function timestep(v)
{
	T = v;
}

function forcex(v)
{
	Fext_x = clip(v,-1,1);
}

function forcey(v)
{
	Fext_y = clip(v,-1,1);
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// utility functions

// wrap the ball position if it reaches edges
function wrap()
{
	if (x<0) { 
		x = 1;
	} else if (x>1) {
		x = 0;
	}
	
	if (y<0) { 
		y = 1;
	} else if (y>1) {
		y = 0;
	}
}

// bounce the ball if it reaches edges
function bounce()
{	
	var min = 0.01;
	var mx = 0.99;
	if ((x<min)||(x>mx)) {
		x=clip(x,min,mx);		
		vx = -vx;
	}
	if ((y<min)||(y>mx)) {
		y=clip(y,min,mx);
		vy = -vy;
	}
}

function clip(x,min,max)
{	
	return Math.min(Math.max(x,min),max);
}

function damp(v)
{
	Damp = clip(v,0,1);
}
