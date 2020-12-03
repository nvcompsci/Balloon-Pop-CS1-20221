public class Spike {
  private int x, y, size, vx, vy;
  
  public Spike(int cwidth, int cheight) {
    this.x = (int) random(cwidth);
    this.y = (int) random(cheight);
    this.size = 15;
    this.vx = (int) random(-7,7);
    this.vy = (int) random(-7,7);
  }
  
  public void draw() {
    fill(0,0,255);
    rect(x,y,size,size);
  }
  
  public void move() {
    x += vx;
    y += vy;
  }
  
  public void collideWorldBounds(int cwidth, int cheight) {
    if (y < 0 || y > cheight) {
      vy *= -1;
    }
    if (x < 0 || x > cwidth) {
      vx *= -1;
    }
  }
  
  public void attack(Balloon b) {
    if (dist(b.getX(),b.getY(),x,y) <= b.getSize() / 2 + size / 2) {
      spikeScore++;
      b.pop();
    }
  }
}
