def given_bay_return_item(list_hash, bay_string)
  bay = bay_string.to_sym
  item = list_hash[bay]

  return item
end

