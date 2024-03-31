
class Ball {

  PVector position;
  PVector velocity;
  PVector force;
  PVector earthGravity;
  int r;
  float mass;
  float maxforce;    // Maximum steering force
  float maxspeed;    // Maximum speed
  float friction = 0.001;
  float g = 0.1;
  
    Ball() {
    
    float x = random(1.0);
    float y = random(1.0);
    position = new PVector(x,y);
    //println(position);
    velocity = new PVector(0,0);
    force = new PVector(0,0);
    mass = 0.01;
    r = 5;
    maxspeed = 2;
    maxforce = 0.03;
    
    earthGravity = new PVector( 0, g*mass ); // y is swapped as usual
    
    
  }

  void run() {
    
    float T = 1.0 / frameRate;
    
    // update velocity: v[n] = v[n-1] + F[n-1] * T / m
    velocity.add( PVector.mult(force, T/mass) ); // note the use of static mult!!
    
    // velocity limit
    velocity.limit(maxspeed);
    
    // update position
    position.add( PVector.mult(velocity,T) );
    
    //println(velocity);
    
    // reset force accumulators
    force.mult(0);
    
    // compute friction for the next step
    force.add( PVector.mult(velocity, -friction ));
    
    force.add( earthGravity );
    
    borders();
    render();
  }

  void applyForce(PVector f) {
    force.add(f);
  }

  void render() {
    fill(255, 100);
    stroke(255);
    circle( position.x*width, position.y*height, r);
  }

  // Wraparound
  void borders() {
    if (position.x < 0) velocity.x = -velocity.x;
    if (position.y < 0) velocity.y = -velocity.y;
    if (position.x > 1.0) velocity.x = -velocity.x;
    if (position.y > 1.0) velocity.y = -velocity.y;
  }
}
