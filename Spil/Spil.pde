int size = 40;
int[][] grid = new int[25][25];

Player player;
Enemy enemy1;
Enemy enemy2;
Enemy enemy3;
Enemy enemy4;
Food food;

void setup()
{
  size(1001, 1001);
  player = new Player(3, 4);
  enemy1 = new Enemy(5, 10, player);
  enemy2 = new Enemy(5, 20, player);
  enemy3 = new Enemy(20, 19, player);
  enemy4 = new Enemy(20, 24, player);

  //food = new Food(15, 15, player);
}

void draw()
{
  clearBoard();
  updateEnemies();
  drawBoard();
  isGameOver();
  resolveCollision();
}

void clearBoard()
{
  for (int x = 0; x < grid.length; x++)
  {
    for (int y = 0; y < grid[0].length; y++)
    {
      grid[x][y] = 0;
    }
  }
}

void drawBoard()
{
  grid[player.x][player.y] = player.type;
  grid[enemy1.x][enemy1.y] = enemy1.type;
  grid[enemy2.x][enemy2.y] = enemy2.type;
  grid[enemy3.x][enemy3.y] = enemy3.type;
  grid[enemy4.x][enemy4.y] = enemy4.type;
  for (int x = 0; x < grid.length; x++)
  {
    for (int y = 0; y < grid[0].length; y++)
    {
      fill(getColorFromType(grid[x][y]));

      rect(x * size, y * size, size, size);
    }
  }
}

void updateEnemies()
{
  grid[player.x][player.y] = player.type;
  player.takeDamage();
}


color getColorFromType(int type) 
{
  color c = color(255);

  switch(type)
  {
  case 0: 
    c = color(127);
    break;
  case 1: //Player color
    c = color(#03F700);
    break;
  case 2: // food color
    c = color(#0006FA);
    break;
  case 3: // Enemy color
    c = color(#FA0000);
    break;
  case 4: 
    c = color (0, 255, 255);
    break;
  }    

  return c;
}

void printIntArray(int[][] arr) 
{
  System.out.println("");
  System.out.println("");
  System.out.println("");
  for (int x = 0; x < arr.length; x++)
  {
    for (int y = 0; y < arr[0].length; y++) 
    {

      System.out.print(arr[x][y] + ", ");
    }
    println();
  }
}

void keyPressed()
{
  if (key == 'w' && player.y>0)
  {
    player.y--;
  }
  if (key == 'a' && player.x>0)
  {
    player.x--;
  }
  if (key == 's' && player.y<grid.length-1)
  {
    player.y++;
  }
  if (key == 'd' && player.x<grid.length-1)
  {
    player.x++;
  }
  grid[player.x][player.y] = player.type;
}

boolean isGameOver()
{
  if (player.health<1) {
    println("Game Over");
    return true;
  } else {
    return false;
  }
}

void resolveCollision()
{
  player.takeDamage();
}
