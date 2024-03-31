/**
 * Multi Balls GRavity
 * adapted from: Flocking by Daniel Shiffman.  
 * 
 */

ArrayList<Ball> balls;

void setup() {
  
  size(600, 600);
  frameRate(100); // Hz
  
  balls = new ArrayList<Ball>(); // Initialize the ArrayList
  
  for (int i = 0; i < 100; i++) {
    
    balls.add( new Ball() );
  }
}

void draw() {
  
  background(0);
  
  for (Ball b : balls) {
      b.run();
    }
}
