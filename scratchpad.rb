def method1 x
  puts x*x
  method1 x
end

def method2
  method1 2
end


puts method1 2