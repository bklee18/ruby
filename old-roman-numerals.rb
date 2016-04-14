#Make a user-inputted number into roman numerals w/o subtraction

#First need input
# puts "Enter number to be transformed into old roman numeral: "
# number = gets.chomp.to_i

#I=1 V=5 X=10 L=50 C=100 D=500 M=1000
#Divide number from largest divisor, take that number, multiply "M" times that and add to string, take remainder and apply same process for next divisor.
# First method, method below is more concise.
# def roman_numeral_old number
#   m_counter = number/1000
#   m_remainder = number%1000
#   d_counter = m_remainder/500
#   d_remainder = m_remainder%500
#   c_counter = d_remainder/100
#   c_remainder = d_remainder%100
#   l_counter = c_remainder/50
#   l_remainder = c_remainder%50
#   x_counter = l_remainder/10
#   x_remainder = l_remainder%10
#   v_counter = x_remainder/5
#   v_remainder = x_remainder%5
#   i_counter = v_remainder/1

#   roman_number = ""
#   roman_number << 'M'*m_counter + 'D'*d_counter + 'C'*c_counter + 'L'*l_counter + 'X'*x_counter + 'V'*v_counter + 'I'*i_counter
#   # roman_number = []
#   # roman_number.push("M"*m_counter, "D"*d_counter, "C"*c_counter, "L"*l_counter, "X"*x_counter, "V"*v_counter, "I"*i_counter)
#   # roman_number.to_s
# end

def roman_numeral_old1 number
  arr1 = [1000, 500, 100, 50, 10, 5, 1]
  arr2 = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
  
  counter = 0
  result = ""
  
  until counter == arr1.length
    roman_count = number/arr1[counter]
    number%=arr1[counter]
    result<< arr2[counter]*roman_count
    counter+=1
  end
  result
end

#now defining modern roman numeral

def roman_numeral_modern number
  arr1 = [1000, 500, 100, 50, 10, 5, 1]
  arr2 = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
  counter = 0
  result = ""
  
  until counter == arr1.length
    roman_count = number/arr1[counter]
    number%=arr1[counter]
    result<< arr2[counter]*roman_count
    if arr1.length - counter > 1
      if counter%2==0 && (number/arr1[counter+2]).to_s[-1]=="9"
        result<< arr2[counter+2] + arr2[counter]
        number -= 9*arr1[counter+2]
        counter+=2
      elsif counter%2 == 1 && (number/arr1[counter+1]).to_s[-1]=="4"
        result<< arr2[counter+1] +arr2[counter]
        number -= 4*arr1[counter+1]
        counter+=1
      else
        counter+=1
      end
    else
        counter+=1
    end
  end
  result
end

until gets.chomp=="end"
  puts "Enter number to be transformed into old roman numeral: "
  number = gets.chomp.to_i
  puts "Result: " + (roman_numeral_modern number).to_s
end

