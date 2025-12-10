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
          ( cellGrid[row][col].cellX <= nearbyNeighbors ||
            cellGrid[row][col].cellX >= -nearbyNeighbors ||
            cellGrid[row][col].cellY <= nearbyNeighbors ||
            cellGrid[row][col].cellY >= -nearbyNeighbors)
            &&
            cellGrid[row][col].alive)
        {
          neighborsAlive++;
        }
      }
    }
  }
}
