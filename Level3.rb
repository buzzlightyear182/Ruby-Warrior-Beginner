class Player

  def play_turn(warrior)
    @health = warrior.health
    if warrior.feel.enemy?
      warrior.attack!
    elsif @health < 20
      warrior.rest!
    else
      warrior.walk!
    end
  end
  
end
  