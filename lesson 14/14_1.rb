def what_enemy(hero)

 enemy = 
  case hero.downcase
    when "batman", "бэтмэн"
      "Joker" 
    when "sauron", "саурон"
      "Gandalf" 
    when "dr. acula", "др. акула"
      "Dr. Cox"
    else
      "We could not find an enemy"
    end 
  return enemy
end

puts "Enemy of which hero woulld you like to know?"
hero = gets.chomp

puts "#{what_enemy(hero)}!"
