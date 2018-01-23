# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sumval = 0
  randomstring = "This is a test string"
  arr.each do |val|
    sumval += val
  end
  return sumval
end

def max_2_sum arr
  val = 0
  val = arr.max(2).reduce(:+) if !arr.empty?
  return val
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  end
  if arr.length == 1
    return false
  end
  arr.each_with_index.any? do |y,i|
    arr.each_with_index.any? do |z,j|
      unless i==j
          if (y + z == n)
            return true
          end
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
  return /^([^AEIOU\W])+(.)*$/i =~ s
end

def binary_multiple_of_4? s
  if (/^[0-1]+$/ =~ s)
    dec = s.to_i(2)
  else
    return false
  end
  if (dec % 4 == 0)
    return true
  end
  return false

end

# Part 3

class BookInStock
  def initialize(isbn, price)
    throw ArgumentError if isbn.empty?
    throw ArgumentError if price <= 0

    @isbn = isbn
    @price = price
  end

  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  def isbn
    return @isbn
  end
  def price
    return @price
  end
  def price_as_string
    return "$#{'%.2f' % price.to_f}"
  end
end
