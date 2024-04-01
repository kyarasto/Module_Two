class Particle {

  PVector velocity;
  float lifespan = 255;
  
  PShape part;
  float partSize;
  
  PVector gravity = new PVector(0,0.1);
  
  Particle() {
    partSize = random(5,30);
    part = createStar(partSize, color(252, 246, 189)); // Create a star shape
    rebirth(width/2,height/2);
    lifespan = random(255);
  }

  PShape createStar(float size, int starColor) {
    PShape star = createShape();
    float angle = TWO_PI / 7;
    float halfAngle = angle / 2.0;
    float radiusOut = size / 2;
    float radiusIn = size / 5;
    star.beginShape();
    star.fill(starColor);
    star.stroke(228, 193, 249);
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = cos(a) * radiusOut;
      float sy = sin(a) * radiusOut;
      star.vertex(sx, sy);
      sx = cos(a + halfAngle) * radiusIn;
      sy = sin(a + halfAngle) * radiusIn;
      star.vertex(sx, sy);
    }
    star.endShape(CLOSE);
    return star;
  }

  PShape getShape() {
    return part;
  }
  
  void rebirth(float x, float y) {
    float a = random(TWO_PI);
    float speed = random(0.5,4);
    velocity = new PVector(cos(a), sin(a));
    velocity.mult(speed);
    lifespan = 255;   
    part.resetMatrix();
    part.translate(x, y); 
  }
 
  boolean isDead() {
    if (lifespan < 0) {
     return true;
    } else {
     return false;
    } 
  }
  

  public void update() {
    lifespan = lifespan - 1;
    velocity.add(gravity);
    
    part.setTint(color(255,lifespan));
    part.translate(velocity.x, velocity.y);
  }
}
