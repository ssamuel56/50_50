def how_many_match(my_numbers, winners)
  win_arr = []
  counter = 0
  x = 0
  until x == winners.length
    i = 0
    winners.length.times do
      if winners[i] == my_numbers[x]
        win_arr << my_numbers[x]
        counter += 1
      end
      i += 1
    end
    x += 1
  end
   if counter > 0
     puts "\ncongradulations! You have a winner \nYour winning numbers are #{win_arr}"
     return win_arr
   else
     puts "\nTry again"
      return counter
   end
end
