class Cell
{
  int size;
  boolean alive;
  boolean nextAlive;
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
      // println("I just set it to white");
    } else {
      fill(0);
      // println("I just set it to black");
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
           ( cellGrid.grid[row][col].cellX <= this.cellX + (nearbyNeighbors * cellSize) &&
             cellGrid.grid[row][col].cellX >= this.cellX - (nearbyNeighbors * cellSize) &&
             cellGrid.grid[row][col].cellY <= this.cellY + (nearbyNeighbors * cellSize) &&
             cellGrid.grid[row][col].cellY >= this.cellY - (nearbyNeighbors * cellSize) &&
             cellGrid.grid[row][col].alive))
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
      nextAlive = false;
    }
    if (neighborsAlive > 3 && alive == true)
    {
      nextAlive = false;
    }
    if (neighborsAlive == 3 && alive == false)
    {
      nextAlive = true;
    }
    if ((neighborsAlive == 2 || neighborsAlive == 3) && alive == true)
    {
      nextAlive = true;
    }
  }
  
  void simultUpdate()
  {
    alive = nextAlive;
  }
}
