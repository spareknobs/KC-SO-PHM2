
/*
// Template code for simple 2D motion simulation
// The 2D space is normalized 0..1
*/

// set up inlets/outlets/assist strings
outlets = 2;
setinletassist(0,"bang calculates one iteration of simulation");
setoutletassist(0,"mass x/y/vx/vy ");
setoutletassist(1,"bang to clear and redraw");


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// global varables

var T = 0.02; // simulation timestep (s)

// mass position vector
var x = 0.5;
var y = 0.5;

// mass velocity vector
var vx = 0.0;
var vy = 0.0;

var m = 1;

var Fext_x = 0;
var Fext_y = 0;

// friction
var D = 0.0;

// ... your code here ...



//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Simulation Step
// called at each bang
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function bang()
{

	// ... your code here ...
	
	// update the mass position
	x = x + vx * T;
	y = y + vy * T;
	
	// compute dissipative force (friction)
	var Fd_x = -D * vx;
	var Fd_y = -D * vy;
	
	// compute the net force on the mass
	var Fsum_x = Fext_x + Fd_x;
	var Fsum_y = Fext_y + Fd_y;
	
	// update the mass velocity
	vx = vx + T/m * Fsum_x;
	vy = vy + T/m * Fsum_y;
	
	
	bounce();
	
	// send a band to clear the canvas
	outlet(1,"bang");
	
	// send the body status
	outlet(0,x,y,vx,vy);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Auxiliary functions - called by proper input messages
function reset()
{
	x = 0.5;
	y = 0.5;
	vx = 0;
	vy = 0;
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

function friction(v){
	D = clip(v,0,10);
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
