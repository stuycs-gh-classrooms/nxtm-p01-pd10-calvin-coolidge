int numCells; // per row/column
int cellSize;
int neighborsRing;
boolean playing = false;
Grid cellGrid;

void setup()
{
  numCells = 50;
  neighborsRing = 1;
  size(500, 500);
  cellSize = (height / numCells);
  cellGrid = new Grid();
  cellGrid.resetCells();
}

void draw()
{
  if (playing)
  {
    background(0);
    cellGrid.display();
    cellGrid.updateCells();
    cellGrid.applyConway();
  }
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
