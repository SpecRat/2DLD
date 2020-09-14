void setup(){
  size(800,800);}
int cellSize = 10; //please make sure this divides into the size well. 
int[] player = {0,0};
int cols = 800/cellSize;
int rows = 800/cellSize;
int[][] myArray = new int[cols][rows];


void keyPressed(){
  if (key == 'r'){ //i use R for create random screen
  for (int i = 0; i < cols; i++) {
 for (int j = 0; j < rows; j++) {
   int num;
    num = int(random(4));
     if (num == 1){
    myArray[i][j] = 255;
     } else {
      myArray[i][j] = 0;
     }
    }
  } 
  }
  
  else {
    if(key==' '){  //space is Invert colors, feel free to reassign this
      for (int i = 0; i < cols; i++) {
       for (int j = 0; j < rows; j++) {
         if (myArray[i][j] == 255){myArray[i][j] = 0; 
         }else{
           if(myArray[i][j] == 0){
           myArray[i][j] = 255;
             }
           }
       }
      }
    }else{
   
    if (key == ENTER){    //enter and coded keys are for player manipulation.
      player[0] = 5;    //enter sets the player pos to selected location
      player[1] = 5;      // as of now its five,five, but i plan to make the player 
     }//able to set the own home location in the future.
     else{ if (key == CODED){
           if (keyCode == UP){ 
           player[1] = player[1]-1; //not sure how var ++ works but plan to simplafy to it
         }
         if (keyCode == DOWN){ 
           player[1] = player[1]+1;
         }
         if (keyCode == RIGHT){
           player[0] = player[0]+1;
         }
         if (keyCode == LEFT){
           player[0] = player[0]-1;
         }
     for (int i = 0; i < cols; i++) {
   for (int j = 0; j < rows; j++) {
     if (myArray[i][j]==100){
       myArray[i][j] = 0;
     }}}
     myArray[player[0]][player[1]] = 100;
            }
          }
        }
      }
    }



  

void draw(){    //frame
for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    fill(myArray[i][j],0,0); // one value does all three rgb values, feel free to add two empty ones to draw with red!
    rect(i*cellSize,j*cellSize,cellSize,cellSize); //
  }
 }
}
