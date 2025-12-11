class Grid
{
  Cell grid[][];
  int gridLength;
  int gridHeight;
  
  Grid()
  {
    gridLength = numCells;
    gridHeight = numCells;
    grid = new Cell[gridHeight][gridLength];
  }
  
  void resetCells()
  {
    for (int row = 0; row < gridHeight; row++)
    {
      for (int col = 0; col < gridLength; col++)
      {
        grid[row][col] = new Cell();
        grid[row][col].cellX = col * cellSize;
        grid[row][col].cellY = row * cellSize;
      }
    }
  }
  
  void display()
  {
    for (int row = 0; row < gridHeight; row++)
    {
      for (int col = 0; col < gridLength; col++)
      {
        grid[row][col].display();
      }
    }
  }
  
  void updateCells()
  {
    for (int row = 0; row < gridHeight; row++)
    {
      for (int col = 0; col < gridLength; col++)
      {
        grid[row][col].updateNeighborsAlive();
      }
    }
  }
  
  void applyConway()
  {
    for (int row = 0; row < gridHeight; row++)
    {
      for (int col = 0; col < gridLength; col++)
      {
        grid[row][col].conwayGameOfLife();
      }
    }
  }
  
  void simultUpdate()
  {
    for (int row = 0; row < gridHeight; row++)
    {
      for (int col = 0; col < gridLength; col++)
      {
        grid[row][col].simultUpdate();
      }
    }
  }
}
