// Simple Motion Simulation of a set of Point-like Masses 
// with Euler's scheme (Forward)
// The 2D space is normalized 0..1

// set up inlets/outlets/assist strings
outlets = 2;
setinletassist(0,"bang calculates one iteration of simulation");
setoutletassist(0,"ball id/x/y/vx/vy ");
setoutletassist(1,"bang to clear and redraw");

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// global varables and code

var nballs = 10;

var m = 0.01;

// external force
var Fext_x = 0.;
var Fext_y = 0.;

// Friction (dissipative term)
var myfriction = 0.0;

// Time Step (s)
var T = 0.02;

// dwonwards gravity acceleration
var mygravity = 0.0;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// the ball class constructor
function ball(mass,x,y,vx,vy) 
{
	this.m = mass;
	this.Fx = 0;
	this.Fy = 0;
	this.x = x;
	this.y = y;
	this.vx = vx;
	this.vy = vy;
	this.move = move_ball; // the updating callback function
}

// initialize balls
var balls = new Array();

for ( i=0; i<nballs; i++){
	
	var x,y,vx,vy;
	x = Math.random();
	y = Math.random();
	vx = (Math.random()-0.5)*0.1;
	vy = (Math.random()-0.5)*0.1;
	
	balls[i] = new ball(m,x,y,vx,vy);
}

reset();


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Reset balls positions to random position
function reset()
{
	for ( i = 0; i < nballs; i++ )
	{
		balls[i].x = Math.random();
		balls[i].y = Math.random();
		balls[i].vx = 0; //(Math.random()-0.5)*0.1;
		balls[i].vy = 0; //(Math.random()-0.5)*0.1;
	}	
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Simulation Step
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function bang()
{
	var i;
	
	// send a band to clear the canvas
	outlet(1,"bang");
	
	
	for ( i=0; i<nballs; i++ ){
		
		// update the ball status
		balls[i].move();

		// send the balls status
		outlet(0,balls[i].x,balls[i].y,balls[i].vx,balls[i].vy);
	}
	
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Move the ball!
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function move_ball()
{
	var x,y,vx,vy,Fx,Fy,m;
	
	// retrieve ball status
	x = this.x;
	y = this.y;
	vx = this.vx;
	vy = this.vy;
	Fx = this.Fx;
	Fy = this.Fy;
	m = this.m;
	
	// update position
	x += vx * T;
	y += vy * T;
	
	// update velocity: v[n] = v[n-1] + F[n-1] * T / m
	vx = vx + Fx * T / m; 
	vy = vy + Fy * T / m; 
		
	// compute force for the next step
	Fx = Fext_x - vx * myfriction;
	Fy = Fext_y - vy * myfriction - mygravity * m;
	
	// store ball status
	this.x = x;
	this.y = y;
	this.vx = vx;
	this.vy = vy;
	this.Fx = Fx;
	this.Fy = Fy;
	
	// wrap around the screen ('80s style)
	//wrap(myball); 
	
	// or bounce
	bounce(this); 	
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Parameters


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

function friction(v)
{
	myfriction = clip(v,0,1);
}

function gravity(v)
{
	// minus since y points downward
	mygravity = -clip(v,-1,1);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// utility functions
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
