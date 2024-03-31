

// set up inlets/outlets/assist strings
outlets = 2;
setinletassist(0,"bang calculates one iteration of simulation");
setoutletassist(0,"mass x/y/vx/vy ");
setoutletassist(1,"bang to clear and redraw");

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// global varables

// Time Step (s)
var T = 0.01;

//... your code here...

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Simulation Step
// called at each bang
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function bang()
{
	
	//... your code here...
	
	// send a band to clear the canvas
	outlet(1,"bang");
	
	// send the mass status - we translate here x & y by 0.5 to center the view
	outlet(0,x+0.5,y+0.5,vx,vy);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Auxiliary functions - called by proper input messages
function reset()
{
	//... your code here...
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

