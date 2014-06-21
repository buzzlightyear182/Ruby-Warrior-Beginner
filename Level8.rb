class Player
  
  def play_turn(warrior)
    if perfect(warrior)
      warrior.walk!
    elsif warrior.feel.captive?
      warrior.rescue!
    elsif check_enemy?(warrior)
      warrior.shoot!
    else
      warrior.rest!
    end
     @health == warrior.health
  end
  
  def perfect(warrior)
    warrior.health == 20 && warrior.feel.empty?
  end
  
  def check_enemy?(warrior)
    warrior.look.any? { |space| space.enemy? }
  end

end