# Use a if/else block to build an unsafe? method that accepts a speed and returns either true or false. It returns true if the speed is below 40 or above 60.
# Going 30 mph on the freeway would be unsafe, as would going 95 mph.
# Going 50 miles per hour, however, would return false as that's within the "safe" range.

def unsafe?(speed)
  # it's strange that method names allow question marks
  if (speed <= 40 || speed >= 60)
    return true
  else 
    return false
  end
end

#____________

# Build the method not_safe? that is a version of your previous unsafe? method 
# but with a ternary operator instead of an if/else block.

def not_safe?(speed)
  (speed < 40 || speed > 60) ? true : false
end

# (speed.between?(40,60)) ? false : true 
# this way, it tests for inclusion, not exclusion
# ____________

# Build a method named sum_machine that takes two parameters and sums them, 
# along with every integer that falls between them, together. 
# Incoporate the += shorthand assignment operator.
# For instance, sum_machine(3, 7) should return 25 (3 + 4 + 5 + 6 + 7) 
# while sum_machine(5, 1) should return 15 (1 + 2 + 3 + 4 + 5).

def sum_machine(first, second)
  # the goal is to sum first and second, which we presume to be integers, 
  # and then to find integers between them
  # (first..second).to_a.inject {|sum,x| sum + x}
  sum = 0 # sets to zero 
    if first < second 
      while first <= second # alternatively, use for i in first..second
       sum += first
       first +=1
      end

    elsif second < first
      while second <= first
        sum += first
        first -= 1
      end
  end #end if statement
  return sum 
end



