# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  shortest_so_far = list.first
  list.each {|item|
    if item.size < shortest_so_far.size
      shortest_so_far = item
    end
  }
  return shortest_so_far
end

if __FILE__ == $PROGRAM_NAME
  p shortest_string(["a", "zzzz", "c"]) == "a"
  p shortest_string(["aaa", "1111", "3"]) == "3"
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
end
