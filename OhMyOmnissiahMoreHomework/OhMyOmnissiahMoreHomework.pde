//Here we define the variable name of our tail class
SquareTail squaretail;
           
void setup() {
  size(1000,1000);
  //Here we use our contructor to create the tail and initialize it.
  squaretail = new SquareTail();
  squaretail.init();
}
            
void draw() {
  background(200, 200, 255);
    //Here we actually make it show up and move around,
    //using our class's functions.
    squaretail.move();
    squaretail.display();
}
