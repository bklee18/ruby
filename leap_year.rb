puts "enter starting year: "
start_year = gets.chomp.to_i
puts"enter ending year: "
end_year = gets.chomp.to_i

if start_year%4 == 0 
  if start_year%100==0 && start_year%400!=0
    leap=start_year + 4
  else
    leap = start_year
  end
else
  leap = (4 - start_year%4) + start_year
end

puts ""
puts "Leap Years listed: "
while leap <= end_year
  if leap%100==0 && leap%400!=0
    puts ""
  else
    puts leap.to_s
  end
  leap+=4
end

