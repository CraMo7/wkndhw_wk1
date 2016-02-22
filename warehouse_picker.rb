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
def sort_bays_order(products_list)

  return ordered_bays
end

# MISC - order bays entrance to exit - a10 - a1 - c1 - c10 - b1 - b10
###### => a -> c -> b ----- a10-1, c1-10, b1-10