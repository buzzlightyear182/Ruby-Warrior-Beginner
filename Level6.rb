class Player

  def play_turn(warrior)
    if warrior.feel(:backward).captive?
      warrior.rescue!(:backward)
    elsif warrior.feel.enemy?
      warrior.attack!
    elsif warrior.feel(:backward).wall?
      warrior.walk!
    elsif hurt?(warrior)
      if shot?(warrior)
        warrior.rest!
      else
        warrior.walk!(:backward)
      end
    else
      warrior.walk!
    end
    @health = warrior.health
  end
  
  def shot?(warrior)
    warrior.health < 20 && !(warrior.health < @health)
  end

  def hurt?(warrior)
    warrior.feel.empty? && @health != 20
  end

end