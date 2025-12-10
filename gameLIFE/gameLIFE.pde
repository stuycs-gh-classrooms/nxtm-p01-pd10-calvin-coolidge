int numCells; // per row/column
int cellSize;
int neighborsRing;
Grid cellGrid;

void setup()
{
  numCells = 50;
  neighborsRing = 1;
  size(500, 500);
  cellSize = (height / numCells);
  cellGrid = new Grid();
}

void draw()
{
  cellGrid.resetCells();
  cellGrid.display();
}
