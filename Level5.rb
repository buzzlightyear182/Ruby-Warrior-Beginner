class Player

  def play_turn(warrior)
    if warrior.feel.captive?
      warrior.rescue!
    elsif warrior.feel.enemy?
      warrior.attack!
    elsif shot?(warrior)
      warrior.rest!
    else
      warrior.walk!
    end
    @health = warrior.health
  end

  def shot?(warrior)
    warrior.health < 20 && !(warrior.health < @health)
  end

end