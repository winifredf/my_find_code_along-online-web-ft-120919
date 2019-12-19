require 'pry'

def my_find(collection)
  
  index = 0
  
  while index < collection.length
    if yield(collection[index]) == true
      return collection[index]
    end
    
    index += 1
  end
end

collection = (1..100).to_a

my_find(collection) do |i|
  i % 3 == 0 && i % 5 == 0
end

my_find(collection) do |i|
  i % 200 == 0
end