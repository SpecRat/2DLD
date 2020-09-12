void setup(){
  size(800,800);}
int[] player = {0,0};
int cols = 800/10;
int rows = 800/10;
int num = 0;
int[][] myArray = new int[cols][rows];


void keyPressed(){
  if (key == 'r'){
  for (int i = 0; i < cols; i++) {
 for (int j = 0; j < rows; j++) {
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
    if(key==' '){
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
   
    if (key == ENTER){
      player[0] = 5;
      player[1] = 5;
     }
     else{ if (key == CODED){
           if (keyCode == UP){
           player[1] = player[1]-1;
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



  

void draw(){
for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    fill(myArray[i][j],0,0); // one value does all three rgb values, feel free to add two empty ones to draw with red!
    rect(i*10,j*10,10,10);
  }
 }
}
