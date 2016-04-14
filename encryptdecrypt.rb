#Encrypt
puts "Enter password to encrypt"

password = gets.chomp

def encrypt(pw)
  counter=0
  length = pw.length
  until counter == length
    if pw[counter] == 'z'
      pw[counter] = 'a'
      counter+=1
    else
      pw[counter] = pw[counter].next
      counter+=1
    end
  end
  pw
end
puts "Processing..."
puts "Encryption Result: " + encrypt(password)
puts "*******"

#Decrypt
puts "Enter password to decrypt"

dpassword = gets.chomp


def decrypt(dpw)
  dcounter = 0
  dlength=dpw.length
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  until dcounter == dlength
    letter = dpw[dcounter]
    index = alphabet.index(letter)
    index-=1
    dpw[dcounter] = alphabet[index]
    dcounter+=1
  end
  dpw
end

puts "Processing..."
puts "Decryption Result: " + decrypt(dpassword)
puts "*******"
