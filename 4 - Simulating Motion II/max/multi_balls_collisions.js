// Simple Motion Simulation of a set of Point-like Masses 
// with Euler's scheme (Forward)
// + Friction
// + Elastic collision model
// The 2D space is normalized 0..1

// set up inlets/outlets/assist strings
outlets = 2;
setinletassist(0,"bang calculates one iteration of simulation");
setoutletassist(0,"ball id/x/y/vx/vy ");
setoutletassist(1,"bang to clear and redraw");

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// global varables and code

var nballs = 0;

var mass = 0.01;

// external force
var Fext_x = 0.;
var Fext_y = 0.;

// Friction (dissipative term)
var myfriction = 0.0;

// Bouncing restitution coefficient
var myrestitution = 0.5;

// Time Step (s)
var T = 0.02;

var mymaxvel = 1;

var Collision_Thres = 0.02;
var Collision_Stiff = 30.0;

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
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Reset balls positions to random pos
function reset()
{
	for ( i = 0; i < nballs; i++ )
	{
		b[i].x = Math.random();
		b[i].y = Math.random();
		b[i].vx = (Math.random()-0.5)*0.1;
		b[i].vy = (Math.random()-0.5)*0.1;
	}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// initialize balls
var b = new Array();

function set_nballs(n){
	
	nballs = n;
	
	b.length = 0;
		
	for ( i=0; i<nballs; i++){
		var bb = new ball(mass,0,0,0,0);
		b.push(bb);
	}
	
	reset();
}

set_nballs(5);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function move(myball)
{
	var x,y,vx,vy,Fx,Fy,m;
	
	// retrieve ball status
	x = myball.x;
	y = myball.y;
	vx = myball.vx;
	vy = myball.vy;
	Fx = myball.Fx;
	Fy = myball.Fy;
	m = myball.m;
	
	// update velocity: v[n] = v[n-1] + F[n-1] * T / m
	vx = vx + Fx * T / m; 
	vy = vy + Fy * T / m; 
	
	// velocity limit
	vx = clip(vx,-mymaxvel,mymaxvel);
	vy = clip(vy,-mymaxvel,mymaxvel);
	
	// update position
	x += vx * T;
	y += vy * T;
	
	// reset force accumulators
	myball.Fx = 0;
	myball.Fy = 0;
	
	// compute force for the next step
	Fx = Fext_x - vx * myfriction;
	Fy = Fext_y - vy * myfriction;
	
	// store ball status
	myball.x = x;
	myball.y = y;
	myball.vx = vx;
	myball.vy = vy;
	myball.Fx += Fx;
	myball.Fy += Fy;
	
	// wrap around the screen ('80s style)
	//wrap(myball); 
	
	// or bounce
	bounce(myball); 
	
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Manage Collisions
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function Collide( b1, b2 ){

	// compute distance
	var dx = b2.x - b1.x;
	var dy = b2.y - b1.y;
	var d = Math.sqrt( dx*dx + dy*dy );
	
	if ( d < Collision_Thres){
	
		// compute collision force
		var force = ( Collision_Thres - d )	* Collision_Stiff;
		
		// compute force unit vectors
		var d12x = (b2.x - b1.x) / d;
		var d12y = (b2.y - b1.y) / d;
		
		b2.Fx = d12x * force;
		b2.Fy = d12y * force;
		
		b1.Fx = -d12x * force;
		b1.Fy = -d12y * force;
		
	}
	
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Simulation Step
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function bang()
{
	// send a band to clear the canvas
	outlet(1,"bang");
	
	for ( i=0; i<nballs; i++ ){	
		for ( n = i+1; n<nballs; n++ ){
			Collide( b[i], b[n] );
		}
	}
	
	for ( i=0; i<nballs; i++ ){
		
		move( b[i] );

		// send the balls status		
		outlet(0,b[i].x,b[i].y,b[i].vx,b[i].vy);
	}
	
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Parameters

function timestep(v)
{
	T = v;
	post("timestep set to: ",T); post("\n");
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

function restitution(v)
{
	myrestitution = clip(v,0,1);
}

function collision_stiffness(v)
{
	Collision_Stiff = clip(v,0,100);
}

function maxvel(v)
{
	mymaxvel = clip(v,0,1)*0.1;
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
		a.vx = -a.vx * myrestitution;
	}
	if ((a.y<min)||(a.y>mx)) {
		a.y=clip(a.y,min,mx);
		a.vy = -a.vy * myrestitution;
	}
}

function clip(x,min,max)
{	
	return Math.min(Math.max(x,min),max);
}
