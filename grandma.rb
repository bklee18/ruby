#Deaf Grandma: Pine Chpt7
bye_counter = 0

while bye_counter<3
  puts "Say smth to grandma"
  input = gets.chomp
  if input == 'BYE'
    bye_counter+=1
  else
    bye_counter=0
    if input != input.upcase
      puts "HUH?!  SPEAK UP, SONNY!"
    elsif input == input.upcase && input!=
      random_year = rand(20) + 1930
      puts "NO, NOT SINCE #{random_year}!"
    end
  end
end