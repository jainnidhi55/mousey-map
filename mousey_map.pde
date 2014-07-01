Location newDelhi = new Location(810,230);
Location istanbul = new Location(630,175);
Location bethesda = new Location(243,182);
Location arlington = new Location(243,184);
Location mcLean = new Location(240,186);
Location danville = new Location(80,185);
Location suZhou = new Location(975,225);
Location zhuHai = new Location(955,255);
Location hongKong = new Location(959,255);
Location saratoga = new Location(81,181);
Location cupertino = new Location(80,190);
Location taiChung = new Location(980,250);
Location taiNan = new Location(980,253);
Location greenwich = new Location(260,175);

void setup(){
  size(1280,635);
  
  ArrayList <Location> locs = new ArrayList();

  locs.add(newDelhi);
  locs.add(istanbul);
  locs.add(bethesda);
  locs.add(arlington); 
  locs.add(mcLean);
  locs.add(danville);
  locs.add(suZhou);
  locs.add(zhuHai);
  locs.add(hongKong);
  locs.add(saratoga);
  locs.add(cupertino);
  locs.add(taiChung);
  locs.add(taiNan);
  locs.add(greenwich);
  
  float[][]adjMatrix = new float[14][14];
  
  for(int i = 0; i < 14; i++){
    for(int j = 0; j < 14; j++){
      if(i == j) adjMatrix[i][j] = 0;
      else adjMatrix[i][j] = distance(locs.get(i),locs.get(j));
    }
  }
  
}


void draw(){
  PImage b;
  b = loadImage("map.png");
  background(b);
  
  //horizontal
  for(int i = 0; i < 635; i += 50){
    line(0,i,1280,i);
    fill(0);
    textSize(10);
    text(i,5,i);
  }
  
  for(int i = 0; i < 1280; i += 50){
    line(i,0,i,635);
    fill(0);
    textSize(10);
    text(i,i,10);
  }
  
  newDelhi.display();
  istanbul.display();
  bethesda.display();
  arlington.display();
  mcLean.display();
  danville.display();
  suZhou.display();
  zhuHai.display();  
  hongKong.display();
  saratoga.display();
  cupertino.display();  
  taiChung.display();
  taiNan.display();
  greenwich.display();
  
  
  /*
  ellipse(mouseX, mouseY, 5, 5);
  println(mouseX);
  println(mouseY);
  */
}

class Location{
  int x;
  int y;
  
  Location(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void display(){
    fill(255,0,0);
    ellipse(x,y,5,5);
  }
  
  int getX(){
    return x;
  }
  
  int getY(){
    return y;
  }
}

float distance(Location loc1, Location loc2){
  return sqrt((float)Math.pow(loc2.getX()-loc1.getX(),2) + (float)Math.pow(loc2.getY()-loc1.getY(),2));
}

void lines(Location loc1, Location loc2){
  line(loc1.getX(),loc1.getY(),loc2.getX(),loc2.getY());
}


