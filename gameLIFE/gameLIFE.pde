int numCells; // per row/column
int cellSize;
int neighborsRing;
int generation;
boolean playing = false;
Grid cellGrid;

void setup()
{
  numCells = 50;
  frameRate(120);
  neighborsRing = 1;
  size(500, 500);
  cellSize = (height / numCells);
  cellGrid = new Grid();
  cellGrid.resetCells();
  cellGrid.display();
}

void draw()
{
  if (playing && (frameCount % 30 == 0))
  {
    background(0);
    cellGrid.updateCells();
    cellGrid.applyConway();
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
  cellGrid.display();
}

void keyPressed()
{
  if (key == 'a')
  {
    playing = !playing;
  }
  if (key == 'r')
  {
    cellGrid.randomizeCells(30);
    cellGrid.display();
  }
  if (key == '1')
  {
    cellGrid.resetCells();
    cellGrid.display();
  }
  if (key == 't')
  {
    generation = 0;
    generationDisplay();
  }
}

void generationDisplay()
{
  textAlign(LEFT, TOP);
  textSize(64);
  fill(255);
  text(generation, 0, 0);
}
