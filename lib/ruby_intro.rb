# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr.combination(2).any? { |x, y| x + y == number }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  string = string.downcase

  cons = 'bcdfghjklmnpqrstvwxyz'

  string.start_with?(*cons.chars)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if (string =~ /^[01]+$/) == true 
    string_del = string.to_i(2)
    string_del % 4 == 0
    true
  else 
    false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    if price <= 0
      raise ArgumentError, 'Price must be greater than 0'
    end
    if isbn == ''
      raise ArgumentError, 'ISBN must not be empty'
    end
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price 
    @price
  end

  def price=(price)
    @price = price
  end

end
