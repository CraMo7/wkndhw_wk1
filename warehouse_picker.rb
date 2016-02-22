# 1
# takes in a hash of bay IDs and their contents, and a bay ID. Returns the name of the item in a given bay.
def bay_to_product(ref_hash, bay_string)
  bay = bay_string.to_sym
  item = ref_hash[bay]
  return item
end

# 2
# takes in a hash of bay IDs and their contents, and an item name. Returns the bay ID where the given item is found.
def product_to_bay(ref_hash, item_string)
  key = ref_hash.key(item_string)
  return key
end

# 3
# takes an array of bays (hash keys, either as symbols ie. :b10 or as simple strings ie. "b10") and returns an array containing strings naming the bays' respective contents
# does not alter the original reference hash, but must refer to it
def bayslist_to_productslist(ref_hash, list_of_bays)
  list_of_items = []
  for bays in list_of_bays
    list_of_items.push(ref_hash[bays.to_sym])
  end
  return list_of_items
end

# 4
# takes an array of strings of product names, and returns an array of the bays those products can be found in.
# Returned array's contents are Symbol datatype.
# does not alter the original reference hash, but must refer to it
def productslist_to_bayslist(ref_hash, list_of_items)
  bays_list = []
  for product in list_of_items
    bays_list.push(ref_hash.key(product))
  end
  return bays_list
end

# 5 --- bays array must be sorted correctly via sort_bays_order() for calc_bays_apart() to work
def calc_bays_apart(sorted_bays)
  all_bays = [:a10, :a9, :a8, :a7, :a6,:a5, :a4, :a3, :a2, :a1, :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :b1, :b2, :b3, :b4, :b5, :b6, :b7, :b8, :b9, :b10]
  bays_distance
  all_bays.index(sorted_bays[0])
  all_bays.index(sorted_bays[sorted_bays.length])
  return bays_distance
end

# 6
def sort_bays_order(unordered_bays)

  #add a loop to filter through array to ensure values are strings and not symbols
  ##########################

  a_bays_unsorted = []
  c_bays_unsorted = []
  b_bays_unsorted = []

  #sorts full array of mixed bays into a, c and b bays in separate arrays
  # I tried a for in loop, I tried to use the .each method, I've been messing with those for hours. Upon reverting to the less elegant while loop, this works exactly as I expect. I do not understand how to use for in loops or .each. "No implicit conversion from string to integer" is burned onto my eyelids. And now it even works with an array of symbols. I guess my implicit conversion of symbol to integer fix was unnecessary as well.
  bay = 0
  while bay < unordered_bays.length
    if unordered_bays[bay][0,1] == "a"
      a_bays_unsorted.push(unordered_bays[bay])
    elsif unordered_bays[bay][0,1] == "c"
      c_bays_unsorted.push(unordered_bays[bay])
    elsif unordered_bays[bay][0,1] == "b"
      b_bays_unsorted.push(unordered_bays[bay])
    end
    bay += 1
  end

  # function adds 0s to keys list to make sort work properly by making the number of digits uniform between keys
  b_bays_unsorted = format_keys_add_leading_0(b_bays_unsorted)
  c_bays_unsorted = format_keys_add_leading_0(c_bays_unsorted)
  a_bays_unsorted = format_keys_add_leading_0(b_bays_unsorted)

  #sorts a, c and b bays into appropriate orders (desc, asc and asc respectively) to follow the physical layout of the warehouse from entrance to exit
  a_bays_descending_order = []
  c_bays_ascending_order = []
  b_bays_ascending_order = []

  a_bays_descending_order = a_bays_unsorted.sort{|bay,next_bay| next_bay <=> bay}
  c_bays_ascending_order = c_bays_unsorted.sort
  b_bays_ascending_order = b_bays_unsorted.sort
  # .sort treats 10 as being lower than all single digit numbers 2-9, presumeably due to it having 2 digits. I am deciding to make my life easier by formatting the dataset to a01, a02 etc. I will attempt to write another function to do this.
  #^ this is done 13-10 lines above this comment line - the following 3 lines use another function to undo it, to match expected formatting
  a_bays_descending_order = format_keys_remove_leading_0(a_bays_descending_order)
  c_bays_ascending_order = format_keys_remove_leading_0(c_bays_ascending_order)
  b_bays_ascending_order = format_keys_remove_leading_0(b_bays_ascending_order)


  # ordered_bays << a_bays_descending_order << b_bays_ascending_order << c_bays_ascending_order
  ordered_bays = []
  ordered_bays.push(a_bays_descending_order)
  ordered_bays.push(c_bays_ascending_order)
  ordered_bays.push(b_bays_ascending_order)

  return ordered_bays.flatten
end


def format_keys_add_leading_0(bays_list)
  #should change this so that it figures out what the longest key length is and makes all other keys that same length, current version is hard coded to make keys of length 2 ie :a3 into :a03 to match the maximum length in this dataset of 3 characters ie :a10
  while x < bays_list.length
  if bays_list[x].length == 2
    bays_list[x].insert_at(1, "0")
  end
  return bays_list
end

def format_keys_remove_leading_0(bays_list)
  while x < bays_list.length
    if bays_list[x][1,1] == "0"
      bays_list[x] = bays_list[x].delete_at(1)
    end  
  end
end


# MISC bays entrance to exit order: a10-1, c1-10, b1-10










