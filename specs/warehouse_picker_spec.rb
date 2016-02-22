require ("minitest/autorun")
require_relative("../warehouse_picker.rb")

class TestsWarehousePicker < MiniTest::Test
  def setup
    @bay_product_hash = {
      b7: "bath fizzers",
      a3: "blouse",
      a7: "bookmark",
      c8: "candy wrapper",
      c8: "chalk",
      b10: "cookie jar",
      b9: "deodorant",
      c2: "drill press",
      c6: "face wash",
      a9: "glow stick",
      a4: "hanger",
      c10: "leg warmers",
      a8: "model car",
      b5: "nail filer",
      a1: "needle",
      c7: "paint brush",
      b4: "photo album",
      b3: "picture frame",
      a10: "rubber band",
      a5: "rubber duck",
      c1: "rusty nail",
      b2: "sharpie",
      c9: "shoe lace",
      a6: "shovel",
      a2: "stop sign",
      c5: "thermometer",
      b1: "tyre swing",
      b8: "tissue box",
      b6: "tooth paste",
      c4: "word search"
    }
  end

##### => SINGLE BAY

##### => 1
def test_bay_to_product()
  assert_equal("nail filer", bay_to_product(@bay_product_hash, :b5))
end

##### => 2
def test_product_to_bay()
  assert_equal(:b5, product_to_bay(@bay_product_hash, "nail filer")) 
end

##### => MULTIPLE BAYS
##### => 3
def test_bayslist_to_productslist()
  assert_equal(["nail filer", "cookie jar", "tooth paste"], bayslist_to_productslist(@bay_product_hash, ["b5", "b10", "b6"]))
end

##### => 4
def test_productslist_to_bayslist()
  assert_equal([:c1, :c9, :c10], productslist_to_bayslist(@bay_product_hash, ["shoe lace", "rusty nail", "leg warmers"]))
end

##### => 5 - 5 is given bays list, list items and calc furthest distance
def test_
  
end


def test_calc_bays_apart()
  assert_equal(28, calc_bays_apart([:a1, :c10, :c1, :a10, :b8, :b2, :a5]))
  
end

##### => 6 - 6 is given products list, find bays and order in entrance to exi order
# def test_find_bays_order_given_product_list()
#   result = find_bays_sort_order(["shoe lace", "rusty nail", "leg warmers"])
#   assert_equal([:c1, :c9, :c10], result)
# end


##### => MISC - ordering bays array
def test_order_bays_array()
  assert_equal([:a10, :a7, :a2, :c3, :c8, :c9, :b3, :b9], order_bays_array([:b9, :b3, :c8, :c9, :a10, :c3, :a2, :a7]))
  
end






end
