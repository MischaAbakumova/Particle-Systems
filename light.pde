
 
Flock flock;
 
void setup() {
  size(800,800);
  colorMode(HSB);
  background(0);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 100; i++) {
    flock.addBoid(new Boid(new PVector(width/2,height/2),7.0,0.05));
  }
}
 
void draw() {
 // background(0);
 //fill(0, 50);
// rect(0,0,width,height);
  
  flock.run();
}
 
// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(new PVector(mouseX,mouseY),15.0,0.05f));
}

