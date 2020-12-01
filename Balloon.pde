public class Balloon {
  private int x, y, size, vx, vy;
  private boolean alive = true;
  
  public Balloon(int cwidth, int cheight) {
    this.x = (int) random(cwidth);
    this.y = (int) random(cheight);
    this.size = (int) random(8,24);
    this.vx = 3;
    this.vy = 3;
  }
  
  public void draw() {
    fill(255,0,0);
    circle(x,y,size);
  }
  
  public void move() {
    vx = (int) random(-2,2);
    vy = (int) random(-2,2);
    x += vx;
    y += vy;
  }
  
  public void balloonVsMouse() {
    if (dist(x,y,mouseX,mouseY) <= size/2) {
      alive = false;
    }
  }
  
  public boolean alive() {
    return alive;
  }
  
  public int getX() {
    return x; 
  }
  
  public int getY() {
    return y;
  }
  
  public int getSize() {
    return size;
  }
  
  public void pop() {
    alive = false;
  }
  
}
