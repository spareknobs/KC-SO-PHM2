
/*
// Simple Motion Simulation of a Point-like Mass + Friction + Gravity
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
var Fext_x = 0.;
var Fext_y = 0.;

// Time Step (s)
var T = 0.02;

var mymaxvel = 1;

// damping coefficient
var Damp = 0;

// gravity acceleration
var Gravity = 0;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// the ball class:
// this method defines a 'ball' object  
// with its own mass, position, velocity
function ball(mass,x,y,vx,vy) 
{
	this.m = mass;
	this.x = x;
	this.y = y;
	this.vx = vx;
	this.vy = vy;
}

// initialize the ball position and velocity
// at the centre of the screen
var x = 0.5;
var y = 0.5;
var vx = 0;
var vy = 0;
var m = 0.01;

// create a ball with the settings above
var myball = new ball(m,x,y,vx,vy);


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Simulation Step
// called at each bang
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function bang()
{
	var x,y,vx,vy,m;
	
	// retrieve ball status
	x = myball.x;
	y = myball.y;
	vx = myball.vx;
	vy = myball.vy;
	m = myball.m;
	
	// update position
	x += vx * T;
	y += vy * T;
	
	// compute friction force
	var Fdamp_x = -vx * Damp;
	var Fdamp_y = -vy * Damp;
	
	// compute the sum of forces applied to the ball
	var Fx = Fext_x + Fdamp_x ;
	var Fy = Fext_y + Fdamp_y - Gravity * m;
	
	// update velocity: v[n] = v[n-1] + F[n-1] * T / m
	vx = vx + Fx * T / m; 
	vy = vy + Fy * T / m; 
	
	// store ball status
	myball.x = x;
	myball.y = y;
	myball.vx = vx;
	myball.vy= vy;
	
	// wrap around the screen ('80s style)
	//wrap(myball); 
	
	// or bounce
	bounce(myball); 
	
	// send a bang to clear the canvas
	outlet(1,"bang");
	
	// send the ball status
	outlet(0,x,y,vx,vy);
	
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Auxiliary functions - called by proper input messages
function reset()
{
	myball.x = 0.5;
	myball.y = 0.5;
	myball.vx = 0;
	myball.vy= 0;
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

function damp(v)
{
	Damp = clip(v,0,1);
}

function gravity(v)
{
	// minus since y points downward
	Gravity = -clip(v,-1,1);
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// utility functions

// wrap the ball position if it reaches edges
function wrap(a)
{
	if (a.x<0) { 
		a.x = a.x + 1.;
	} else if (a.x>1) {
		a.x = a.x - 1.;
	}
	
	if (a.y<0) {
		a.y = a.y + 1.;
	} else if (a.y>1) {
		a.y = a.y - 1.;
	}
}

// bounce the ball if it reaches edges
function bounce(a)
{	
	var min = 0.01;
	var mx = 0.99;
	if ((a.x<min)||(a.x>mx)) {
		a.x=clip(a.x,min,mx);		
		a.vx = -a.vx;
	}
	if ((a.y<min)||(a.y>mx)) {
		a.y=clip(a.y,min,mx);
		a.vy = -a.vy;
	}
}

function clip(x,min,max)
{	
	return Math.min(Math.max(x,min),max);
}
