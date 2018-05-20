# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  arr.each do |i|
    sum+=i
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif
    arr.length == 1
    return arr[0]
  else
    arr2 = arr.sort
  return arr2[-1] + arr2[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  len=arr.length
  if len<2
    return false
  end
  (0...len).each do |i|
    ((i+1)...len).each do |j|
      if arr[i]+arr[j]==n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  fc=s[0].downcase
  if fc.ord < 97 or fc.ord > 122
    return false
  end
  noc = ["a","e","i","o","u"]
  if noc.include?fc
    return false
  end
  
  return true
end

def binary_multiple_of_4? s
 
  unless s =~ /^[0,1]+$/ 
	  return false
  end 

  if s.to_i(2) % 4 == 0
    return true
  else 
    return false
  end
end


# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  #attr_accessor :name"方法包含了attr_reader和attr_writer方法，
  #实现了对实例变量@name的writter和reader

  def initialize isbn, price
    @isbn = isbn
    @price = price
    raise ArgumentError, "isbn is empty" if isbn.empty?
    raise ArgumentError, "Price should be over 0" if price <= 0
   
  end

  def price_as_string
    return "$" + ("%.2f" % @price)
  end
end
