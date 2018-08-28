
int cols = width;
int rows = height;
int[][] myArray = new int[cols][rows];
int[][] myArray2 = new int[cols][rows];
int neighbours = 0;
int k = 0;
int kk = 0;
int c = 0;

void setup() {
randomSeed(0);
size(300,300);
cols = width;
rows = height;
  
// Declare 2D array
myArray = new int[cols][rows];
myArray2 = new int[cols][rows];

// Initialize 2D array values
for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    myArray[i][j] = round(random(0,10));
  }
}
}

// Draw points
void draw() {
background(0);
if (c == 0) {
for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    neighbours = 0;
    if (i - 1 >= 0) {
    k = i - 1;
    if(myArray[k][j] == 1) {
    neighbours += 1;
    }
    }
    if (i + 1 <= cols - 1) {
    k = i + 1;
    if(myArray[k][j] == 1) {
    neighbours += 1;
    }
    }
    if (j - 1 >= 0) {
    k = j - 1;
    if(myArray[i][k] == 1) {
    neighbours += 1;
    }
    }
    if (j + 1 <= rows - 1) {
    k = j + 1;
    if(myArray[i][k] == 1) {
    neighbours += 1;
    }
    }
    if (i - 1 >= 0 && j - 1 >= 0) {
    k = i - 1;
    kk = j - 1;
    if(myArray[k][kk] == 1) {
    neighbours += 1;
    }
    }
    if (i + 1 <= cols - 1 && j + 1 <= rows - 1) {
    k = i + 1;
    kk = j + 1;
    if(myArray[k][kk] == 1) {
    neighbours += 1;
    }
    }
    if (j - 1 >= 0 && i + 1 <= cols - 1) {
    k = j - 1;
    kk = i + 1;
    if(myArray[kk][k] == 1) {
    neighbours += 1;
    }
    }
    if (j + 1 <= rows - 1 && i - 1 >= 0) {
    k = j + 1;
    kk = i - 1;
    if(myArray[kk][k] == 1) {
    neighbours += 1;
    }
    }
    if(myArray[i][j] == 1 && neighbours <= 3 && neighbours >= 2) {
    stroke(255);
    point(i,j);
    myArray2[i][j] = 1;
    } else if(myArray[i][j] == 1 && neighbours > 3) {
    stroke(255);
    point(i,j);
    myArray2[i][j] = 0;
    } else if(myArray[i][j] == 0 && neighbours == 3) {
    stroke(255);
    point(i,j);
    myArray2[i][j] = 1;
    } else {
    myArray2[i][j] = 0;
    stroke(0);
    point(i,j);
    }
  }
}
c = 1;
} else {
  for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    neighbours = 0;
    if (i - 1 >= 0) {
    k = i - 1;
    if(myArray2[k][j] == 1) {
    neighbours += 1;
    }
    }
    if (i + 1 <= cols - 1) {
    k = i + 1;
    if(myArray2[k][j] == 1) {
    neighbours += 1;
    }
    }
    if (j - 1 >= 0) {
    k = j - 1;
    if(myArray2[i][k] == 1) {
    neighbours += 1;
    }
    }
    if (j + 1 <= rows - 1) {
    k = j + 1;
    if(myArray2[i][k] == 1) {
    neighbours += 1;
    }
    }
    if (i - 1 >= 0 && j - 1 >= 0) {
    k = i - 1;
    kk = j - 1;
    if(myArray2[k][kk] == 1) {
    neighbours += 1;
    }
    }
    if (i + 1 <= cols - 1 && j + 1 <= rows - 1) {
    k = i + 1;
    kk = j + 1;
    if(myArray2[k][kk] == 1) {
    neighbours += 1;
    }
    }
    if (j - 1 >= 0 && i + 1 <= cols - 1) {
    k = j - 1;
    kk = i + 1;
    if(myArray2[kk][k] == 1) {
    neighbours += 1;
    }
    }
    if (j + 1 <= rows - 1 && i - 1 >= 0) {
    k = j + 1;
    kk = i - 1;
    if(myArray2[kk][k] == 1) {
    neighbours += 1;
    }
    }
    if(myArray2[i][j] == 1 && neighbours <= 3 && neighbours >= 2) {
    stroke(255);
    point(i,j);
    myArray[i][j] = 1;
    } else if(myArray2[i][j] == 1 && neighbours > 3) {
    stroke(255);
    point(i,j);
    myArray[i][j] = 0;
    } else if(myArray2[i][j] == 0 && neighbours == 3) {
    stroke(255);
    point(i,j);
    myArray[i][j] = 1;
    } else {
    myArray[i][j] = 0;
    stroke(0);
    point(i,j);
    }
  }
}
c = 0;
}
print(c);
}