def given_bay_return_item(list_hash, bay_string)
  bay = bay_string.to_sym
  item = list_hash[bay]

  return item
end

def given_item_return_bay(list_hash, item_string)
  key = list_hash.key(item_string).to_s

  return key
end