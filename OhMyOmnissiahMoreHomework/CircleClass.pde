class SquareTail {

//Here we set up our two arrays and define the number of indices.
int[] xpos=new int[75];
int[] ypos=new int[75];

//Here we set up our constructor, which we give no variable parameters
SquareTail(){}

//The function to initialize our tail of rectangles
void init() {
  for (int i=0; i < xpos.length; i++) {
    //Starting in position 0,0 
    xpos[i]=0;
    ypos[i]=0;
  }}

//The function to shift the array indices,
//so the new value is inserted at the end of the array,
//and everything else shifts position.
void move(){
  for (int i=0; i < xpos.length-1; i++) {
    //xpos i's value shifts to equal that of xpos i+1, to the limit,
    //which is xpos:length-1 since it may have x amount of spots,
    //but one of those spots is zero, 
    //meaning there's spots up to the length-1.
    xpos[i]=xpos[i+1];
    ypos[i]=ypos[i+1];
    xpos[xpos.length-1]=mouseX;
    ypos[ypos.length-1]=mouseY;
  }}

//The function to actually display our tail
void display(){
  for (int i=0; i < xpos.length; i++) {
    noStroke();
    //The color is determined by the array index value,
    //so it becomes lighter the older the position is.
    fill(200-i*5, 200-i*5, 255-i*5);
    rectMode(CENTER);
    //The position and size are changed with the array, as above.
    rect(xpos[i],ypos[i],i,i);
  }}
}
