int numCells; // per row/column
int cellSize;
int neighborsRing;
boolean playing = true;
Grid cellGrid;

void setup()
{
  numCells = 50;
  frameRate(60);
  neighborsRing = 2;
  size(500, 500);
  cellSize = (height / numCells);
  cellGrid = new Grid();
  cellGrid.resetCells();
}

void draw()
{
  if (playing && (frameCount % 60 == 0))
  {
    background(0);
    cellGrid.updateCells();
    cellGrid.applyConway();
    cellGrid.simultUpdate();
    cellGrid.display();
    println(cellGrid.grid[1][1].alive);
  }
  // println(cellGrid.grid[1][1].alive);
  // println(frameCount);
}

void mouseReleased()
{
  int col = mouseX / cellSize;
  int row = mouseY / cellSize;
  cellGrid.grid[row][col].alive = true;
  cellGrid.grid[row][col + 1].alive = true;
  cellGrid.grid[row + 1][col].alive = true;
  cellGrid.grid[row + 1][col + 1].alive = true;
}

void keyPressed()
{
  if (key == 'a')
  {
    playing = !playing;
  }
}
