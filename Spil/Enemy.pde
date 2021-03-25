class Enemy
{
  int x; 
  int y; 
  int type = 3; 
  Player player;

  Enemy(int x, int y, Player player)
  {
    this.x = x;
    this.y = y;
    this.player = player;
  }

  void MoveTowardsPlayer()
  {
    //  int xDistance = Math.abs(player.x - x);
    //  int yDistance = Math.abs(player.y - y);
    //enemy.x 
    //player.x 

    //  // random chance (~25% chance) for at enemy flytter sig i en tilfældig retning. 
    //int random = Math.random(1,4)
    //if (random == 1) 
    //int random2 = Math.random(1,4)
    //if (random2)
    double random = Math.random() * 4;
    if (random == 1) {
      double random2 = Math.random() *4;
      if (random2 == 1) {
        x--;
      } else if (random2 == 2) {
        x++;
      } else if (random2 == 3) {
        y--;
      } else if (random2 == 4) {
        y++;
      }
    } else {
      //  if (xDistance > yDistance) //If (framecount%20 == 0)???
      //  {

      //if(enemy.x > player.x) --> enemy.x = enemy.x-1
      //else enemy.x++

      //    // opdatér x værdi til at rykke ét felt nærmere playeren!
      //  } else
      //  {
      //    // opdatér y værdi til at rykke ét felt nærmere playeren!
      //  }
    }
  }
}
