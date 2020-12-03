Balloon[] balloons = new Balloon[400];
Spike[] spikes = new Spike[6];
int score = 0;
int spikeScore = 0;

public void setup() {
  size(600,600);
  
  for (int i = 0; i < 400; i++) {
    balloons[i] = new Balloon(600,600);
  }
  for (int i = 0; i < 6; i++) {
    spikes[i] = new Spike(600,600);
  }
}

public void draw() {
  background(220);
  
  
  for (Balloon balloon : balloons) {
    if (!balloon.alive()) continue;
    
    balloon.balloonVsMouse();
    balloon.move();
    balloon.draw();
  }
  
  for (Spike spike : spikes) {
    for (Balloon b : balloons) {
      if (b.alive)
        spike.attack(b);
    }
    
    spike.collideWorldBounds(600,600);
    spike.move();
    spike.draw();
  }
  
  fill(0);
  text(score,10,10);
  text(spikeScore,width/2,10);
}
