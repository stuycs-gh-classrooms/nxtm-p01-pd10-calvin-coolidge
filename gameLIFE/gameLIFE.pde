int numCells; // per row/column
int cellSize;
int neighborsRing;
int generation;
boolean playing = false;
int mode;
Grid cellGrid;

void setup()
{
  numCells = 50;
  frameRate(240);
  neighborsRing = 1;
  size(500, 500);
  cellSize = (height / numCells);
  cellGrid = new Grid();
  cellGrid.resetCells();
  cellGrid.display();
  println("Hello! This is a replica of the 'Game of Life' by John Conway, with the Seeds automata and the Highlife automata included.");
  println("This processing sketch was made by Justin Luo of period 10, solely.");
  println("The code works, but would not pass if graded for efficiency. Thankfully, this class is not about that.");
  println("Anyways, press 'a' to start, 'f' to clear, 'r' to randomize all cells, and 't' to reset the generation count.");
  println("'z', 'x', and 'c' change the mode to Conway's, Seeds, and Highlife respectively, with Conway's  being the default loaded up.");
  println("Each different mode has three presets, each accessible within their respective modes with the '1', '2', and '3' hotkeys respectively.");
  println("Highlife and Conway are very similar, so some patterns will work the same in both.");
  println("I'll let you figure out what configurations are in which mode.");
  println("Have fun!");
}

void draw()
{
  if (playing && (frameCount % 30 == 0))
  {
    background(0);
    cellGrid.updateCells();
    if (mode == 0)
    {
      cellGrid.applyConway();
    }
    if (mode == 1)
    {
      cellGrid.applySeedsLife();
    }
    if (mode == 2)
    {
      cellGrid.applyHighLife();
    }
    cellGrid.simultUpdate();
    cellGrid.display();
    generation++;
    // println(cellGrid.grid[1][1].alive);
  }
  generationDisplay();
  // println(cellGrid.grid[1][1].alive);
  // println(frameCount);
}

void mouseReleased()
{
  int col = mouseX / cellSize;
  int row = mouseY / cellSize;
  cellGrid.grid[row][col].alive = !cellGrid.grid[row][col].alive;
  // cellGrid.grid[row][col + 1].alive = true;
  // cellGrid.grid[row + 1][col].alive = true;
  // cellGrid.grid[row + 1][col + 1].alive = true;
  println(row + "," + col);
  cellGrid.display();
}

void keyPressed()
{
  if (key == 'a')
  {
    playing = !playing;
    if (playing == true)
    {
      println("Unpaused the game");
    } else
    {
      println("Stopped the game");
    }
  }
  if (key == 'r')
  {
    cellGrid.randomizeCells(30);
    cellGrid.display();
    println("Randomized cell states");
  }
  if (key == 'f')
  {
    cellGrid.resetCells();
    cellGrid.display();
    println("Resetted cells to dead state");
  }
  if (key == 't')
  {
    generation = 0;
    generationDisplay();
    println("Resetted generation count");
  }
  if (key == 'z')
  {
    mode = 0;
    println("Conway");
  }
  if (key == 'x')
  {
    mode = 1;
    println("Seeds");
  }
  if (key == 'c')
  {
    mode = 2;
    println("Highlife");
  }
  if (mode == 0 && key == '1')
  {
    cellGrid.resetCells();
    cellGrid.grid[15][19].alive = true;
    cellGrid.grid[16][19].alive = true;
    cellGrid.grid[17][19].alive = true;
    cellGrid.grid[17][18].alive = true;
    cellGrid.grid[16][17].alive = true;
    cellGrid.display();
    println("glider");
  }

  if (mode == 0 && key == '2')
  {
    cellGrid.resetCells();
    cellGrid.grid[10][10].alive = true;
    cellGrid.grid[10][11].alive = true;
    cellGrid.grid[11][10].alive = true;
    cellGrid.grid[11][11].alive = true;

    cellGrid.grid[12][12].alive = true;
    cellGrid.grid[12][13].alive = true;
    cellGrid.grid[13][12].alive = true;
    cellGrid.grid[13][13].alive = true;

    cellGrid.display();
    println("beacon");
  }

  if (mode == 0 && key == '3')
  {
    cellGrid.resetCells();

    cellGrid.grid[10][20].alive = true;
    cellGrid.grid[10][21].alive = true;
    cellGrid.grid[10][22].alive = true;

    cellGrid.grid[11][19].alive = true;
    cellGrid.grid[11][20].alive = true;
    cellGrid.grid[11][21].alive = true;

    cellGrid.display();
    println("toad oscillator");
  }

  if (mode == 1 && key == '1')
  {
    cellGrid.resetCells();
    cellGrid.grid[25][25].alive = true;
    cellGrid.grid[26][25].alive = true;
    cellGrid.grid[25][26].alive = true;
    cellGrid.grid[26][26].alive = true;
    cellGrid.display();
    println("diamond");
  }

  if (mode == 1 && key == '2')
  {
    cellGrid.resetCells();
    cellGrid.grid[25][25].alive = true;
    cellGrid.grid[27][24].alive = true;
    cellGrid.grid[29][25].alive = true;
    cellGrid.grid[29][26].alive = true;
    cellGrid.display();
    println("order to chaos");
  }
  
  if (mode == 1 && key == '3')
  {
    cellGrid.resetCells();
    cellGrid.grid[25][21].alive = true;
    cellGrid.grid[25][23].alive = true;
    cellGrid.grid[25][25].alive = true;
    cellGrid.grid[25][27].alive = true;
    cellGrid.grid[25][29].alive = true;
    cellGrid.display();
    println("slow expansion");
  }
  
  if (mode == 2 && key == '1')
  {
    cellGrid.resetCells();
    cellGrid.grid[25][25].alive = true;
    cellGrid.grid[25][24].alive = true;
    cellGrid.grid[25][23].alive = true;
    cellGrid.grid[26][22].alive = true;
    cellGrid.grid[26][25].alive = true;
    cellGrid.grid[27][21].alive = true;
    cellGrid.grid[27][25].alive = true;
    cellGrid.grid[28][21].alive = true;
    cellGrid.grid[28][24].alive = true;
    cellGrid.grid[29][21].alive = true;
    cellGrid.grid[29][22].alive = true;
    cellGrid.grid[29][23].alive = true;
    cellGrid.display();
    println("replicator");
  }
  
  if (mode == 2 && key == '2')
  {
    cellGrid.resetCells();
    cellGrid.grid[25][25].alive = true;
    cellGrid.grid[25][26].alive = true;
    cellGrid.grid[25][27].alive = true;
    cellGrid.grid[26][24].alive = true;
    cellGrid.grid[27][24].alive = true;
    cellGrid.grid[28][24].alive = true;
    
    cellGrid.grid[28][33].alive = true;
    cellGrid.grid[29][33].alive = true;
    cellGrid.grid[30][33].alive = true;
    cellGrid.display();
    println("bomber");
  }
  
  if (mode == 2 && key == '3')
  {
    cellGrid.resetCells();
    cellGrid.grid[25][25].alive = true;
    cellGrid.grid[25][26].alive = true;
    cellGrid.grid[25][27].alive = true;
    cellGrid.grid[26][27].alive = true;
    cellGrid.grid[28][25].alive = true;
    cellGrid.grid[28][27].alive = true;
    cellGrid.grid[29][26].alive = true;
    cellGrid.grid[29][27].alive = true;
    cellGrid.display();
    println("p10, an oscillator that doesn't work in Conway");
  }
}

void generationDisplay()
{
  textAlign(LEFT, TOP);
  textSize(64);
  fill(255);
  text(generation, 0, 0);
}
