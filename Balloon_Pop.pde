Balloon[] balloons = new Balloon[400];

public void setup() {
  size(600,600);
  
  for (int i = 0; i < 400; i++) {
    balloons[i] = new Balloon(600,600);
  }
}

public void draw() {
  background(220);
  
  for (Balloon balloon : balloons) {
    if (!balloon.alive()) continue;
    
    balloon.move();
    balloon.draw();
  }
}
