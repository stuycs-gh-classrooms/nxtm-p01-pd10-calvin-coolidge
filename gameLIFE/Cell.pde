class Cell
{
  int size;
  boolean alive;
  int cellX;
  int cellY;
  
  Cell()
  {
    alive = true;
    size = cellSize;
  }
  
  void display()
  {
    if(alive == true)
    {
      fill(255);
    }
    else { fill(0);}
    square(cellX, cellY, size);
  }
  
  void updateNeighborsAlive()
  {
    
  }
}
