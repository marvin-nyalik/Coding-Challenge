def asteroid_collision(asteroids)
    stack = []
  
    asteroids.each do |a|
      while stack.any? && stack.last > 0 && a < 0
          diff = stack.last + a
  
          if diff > 0
              a = 0
          elsif diff < 0
              stack.pop
          else
              stack.pop
              a = 0
          end
      end
  
      stack << a unless a.zero?
    end
  
    stack
end
  
  