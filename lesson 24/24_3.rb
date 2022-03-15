(1..100).each do |i|
  text = if (i%15).zero?
           'тыры-пыры'
          elsif (i%3).zero?
            'тыры'
          elsif (i%5).zero?
            'пыры'
          else
            i.to_s
         end
  puts text
end


