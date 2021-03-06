def making_random_numbers(tickets)
  arr = []
  tickets.times do
    arr << rand(1000..9999).to_s
  end
  arr
end

def random_winning_numbers
  arr = []
  10.times do
    arr << rand(1000..9999).to_s
  end
  arr
end

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

puts "How many tickets do you want to buy?"
tickets = $stdin.gets.chomp.to_i

my_numbers = making_random_numbers(tickets)
winners = random_winning_numbers()

print "#{my_numbers} are my numbers"
print "\n\nThe winners are #{winners}"

how_many_match(my_numbers, winners)
