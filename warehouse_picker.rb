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

# 5
def calc_bays_apart(list_of_bays)
  
  return num_bays_apart
end

# 6
def sort_bays_order(unordered_bays)

  #add a loop to filter through array to ensure values are strings and not symbols

  a_bays_unsorted = []
  c_bays_unsorted = []
  b_bays_unsorted = []

  #sorts full array of mixed bays into a, c and b bays in separate arrays
  # I tried a for in loop, I tried to use the .each method, I've been messing with those for hours. Upon reverting to the less elegant while loop, this works exactly as I expect. I do not understand how to use for in loops or .each. "No implicit conversion from string to integer" is burned onto my eyelids. And now it even works with an array of symbols. I guess my implicit conversion of symbol to integer fix was unnecessary as well.
  bay = 0
  while bay < unordered_bays.length
    if (unordered_bays[bay][0,1] == "a")
      a_bays_unsorted.push(unordered_bays[bay])
    elsif unordered_bays[bay][0,1] == "c"
      c_bays_unsorted.push(unordered_bays[bay])
    elsif unordered_bays[bay][0,1] == "b"
      b_bays_unsorted.push(unordered_bays[bay])
    end
    bay += 1
  end

  #sorts a, c and b bays into appropriate orders (desc, asc and asc respectively) to follow the physical layout of the warehouse from entrance to exit
  a_bays_descending_order = []
  c_bays_ascending_order = []
  b_bays_ascending_order = []

  
  

  # ordered_bays << a_bays_descending_order << b_bays_ascending_order << c_bays_ascending_order
  ordered_bays.push(a_bays_descending_order)
  ordered_bays.push(c_bays_ascending_order)
  ordered_bays.push(b_bays_ascending_order)

  return ordered_bays
end




# MISC bays entrance to exit order: a10-1, c1-10, b1-10










