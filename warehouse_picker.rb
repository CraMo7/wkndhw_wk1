# 1
# takes in a hash of bay IDs and their contents, and a bay ID. Returns the name of the item in a given bay.
def given_bay_return_item(list_hash, bay_string)
  bay = bay_string.to_sym
  item = list_hash[bay]
  return item
end

# 2
# takes in a hash of bay IDs and their contents, and an item name. Returns the bay ID where the given item is found.
def given_item_return_bay(list_hash, item_string)
  key = list_hash.key(item_string)
  return key
end

# 3
# 
def list_items_from_given_bays(full_hash, list_of_bays)
  list_of_items = []
  for bays in list_of_bays
    list_of_items.push(full_hash[bays.to_sym])
  end
  return list_of_items
end

# 4
def get_target_bays_list_from_products_list(full_hash, list_of_items)
  bays_list = []
  for product in list_of_items
    ##### => ADD SORTING - so that bays list array is returned in ascending order to match spec.
    bays_list.push(full_hash.key(product))
  end
  return bays_list
end

# 5
def calc_bays_apart(full_hash, list_of_bays)
  
  return num_bays_apart
end