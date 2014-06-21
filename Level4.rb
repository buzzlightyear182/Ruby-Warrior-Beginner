class Player

  def play_turn(warrior)
    if warrior.feel.enemy?
      warrior.attack!
    else
      if damage(warrior)
        warrior.rest!
      else
        warrior.walk!
      end
    end
    @health = warrior.health
  end

  def damage(warrior)
    warrior.health < 20 && !(warrior.health < @health)
  end

end

