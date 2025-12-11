class Cell
{
  int size;
  boolean alive;
  int cellX;
  int cellY;
  int nearbyNeighbors;
  int neighborsAlive;

  Cell()
  {
    alive = true;
    size = cellSize;
    nearbyNeighbors = neighborsRing;
    neighborsAlive = -1;
  }

  void display()
  {
    if (alive == true)
    {
      fill(255);
    } else {
      fill(0);
    }
    square(cellX, cellY, size);
  }

  void updateNeighborsAlive()
  {
    for (int row = 0; row < numCells; row++)
    {
      for (int col = 0; col < numCells; col++)
      {
        if (
           ( cellGrid.grid[row][col].cellX <= this.cellX + (nearbyNeighbors * cellSize) ||
             cellGrid.grid[row][col].cellX >= this.cellX - (nearbyNeighbors * cellSize) ||
             cellGrid.grid[row][col].cellY <= this.cellY + (nearbyNeighbors * cellSize) ||
             cellGrid.grid[row][col].cellY >= this.cellY - (nearbyNeighbors * cellSize))
             &&
             cellGrid.grid[row][col].alive)
        {
          neighborsAlive++;
        }
      }
    }
  }
  
  void conwayGameOfLife()
  {
    if (neighborsAlive < 2 && alive == true)
    {
      alive = false;
    }
    if (neighborsAlive > 3 && alive == true)
    {
      alive = false;
    }
    if (neighborsAlive == 3 && alive == false)
    {
      alive = true;
    }
    if ((neighborsAlive == 2 || neighborsAlive == 3) && alive == true)
    {
      alive = true;
    }
  }
}
