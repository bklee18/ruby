# p word_array.sort
#sorting list without recursion
def sort_array array
  sorted=[]
  a=0
  b=0
  until a==(array.length-1)||b==(array.length)
    if array[a] <= array[b]
      b+=1
    else
      a+=1
      b=0
    end
  end
  sorted.push array[a]
  array.delete(array[a])
 
  while true
    if array.length==1
      sorted.push array[0]
      break
    else
      a=0
      b=0
      until a==(array.length-1)||b==(array.length)
        if array[a]<=array[b]
          b+=1
        else
          a+=1
          b=0
        end
      end
      sorted.push array[a]
      array.delete_at(a)
    end
  end
  sorted
end

#recursive wrap to make arguments just 1 since recursive_sort needs two arrays to recursively call itself

def recursive_sort_wrap some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array,sorted_array
  if unsorted_array==[]
    return sorted_array
  else
    a=0
    b=0
    until a==(unsorted_array.length-1)||b==(unsorted_array.length)
      if unsorted_array[a]<=unsorted_array[b]
        b+=1
      else
        a+=1
        b=0
      end
    end 
    sorted_array.push unsorted_array[a]
    unsorted_array.delete_at(a)
  end
  recursive_sort unsorted_array,sorted_array
end

#TIME TO SHUFFFFLLLLLEEEEEE, using rand on array.length
def shuffle array
  shuffled_array=[]
  until array==[]
    length = array.length
    random=rand(length).to_i
    shuffled_array.push array[random]
    array.delete_at(random)
  end
 shuffled_array
end

#DICTIONARY SORT. going to reuse recursive sort code, but add a downcase

def dictionary_sort_wrap some_array
  dictionary_sort some_array, []
end

def dictionary_sort unsorted_array,sorted_array
  if unsorted_array==[]
    return sorted_array
  else
    a=0
    b=0
    until a==(unsorted_array.length-1)||b==(unsorted_array.length)
      if unsorted_array[a].downcase<=unsorted_array[b].downcase
        b+=1
      else
        a+=1
        b=0
      end
    end 
    sorted_array.push unsorted_array[a]
    unsorted_array.delete_at(a)
  end
  recursive_sort unsorted_array,sorted_array
end

#Program that asks us to enter as many words, terminates on entering a blank line and repeats the words back to user.

#First need to ask user to enter word one at a time

puts "Enter word, press enter, enter next word. when finished, enter a blank line"

word_array =[]
word=nil

until word == ""
  word = gets.chomp
  word_array.push word
end

word_array.pop

puts ""
puts ""

puts dictionary_sort_wrap word_array