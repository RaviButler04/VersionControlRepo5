class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  int R;
  int G;
  int B;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    R = int(random(255));
    G = int(random(255));
    B = int(random(255));
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(R,G,B);
    ellipse(position.x, position.y, 10, 10);
  }
}
