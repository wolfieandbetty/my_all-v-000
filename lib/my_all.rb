require 'pry'

def my_all?(collection)
  i=0
  block_return_values = []
  while i < collection.length
    yield(collection[i])
    i+=1
  end

  if block_return_values.include? (false)
    false
  else
    true
  binding.pry
  end

end

my_all?([1,2,3]) {|i| i < 2}
