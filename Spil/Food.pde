class Food
{
  int x;
  int y;
  int type = 1;
  Player player;

  //food(int x, int y, Player player)
  {
    this.x = x;
    this.y = y;

  }


    //moveAwayFromPLayer()
    {
      int xDistance = Math.abs(player.x - x);
      int yDistance = Math.abs(player.y - y);

      // random chance (~25% chance) for at food flytter sig i en tilfældig retning. 

      if (xDistance > yDistance)
      {
        // opdatér x værdi til at rykke ét felt nærmere playeren!
      } else
      {
        // opdatér y værdi til at rykke ét felt nærmere playeren


      }

    }
}
