require ("minitest/autorun")
require_relative("../warehouse_picker.rb")

class TestsWarehousePicker < MiniTest::Test
  def setup
    @product_bay_list = {
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
def test_given_bay_return_item()
  assert_equal("nail filer", given_bay_return_item(@product_bay_list, :b5))
end

##### => 2
def test_given_item_return_bay()
  assert_equal(:b5, given_item_return_bay(@product_bay_list, "nail filer")) 
end

##### => MULTIPLE BAYS
##### => 3
def test_list_items_from_given_bays()
  assert_equal(["nail filer", "cookie jar", "tooth paste"], list_items_from_given_bays(@product_bay_list, ["b5", "b10", "b6"]))
end

##### => 4
def test_get_target_bays_list_from_products_list()
  assert_equal([:c1, :c9, :c10], get_target_bays_list_from_products_list(@product_bay_list, ["shoe lace", "rusty nail", "leg warmers"]))
end

##### => 5
def test_calc_bays_apart()
  assert_equal(28, calc_bays_apart(@product_bay_list, [:a1, :c10, :c1, :a10, :b8, :b2, :a5]))
  
end

##### => 6
def test_find_bays_order_given_product_list()
  assert_equal()
end


##### => MISC - ordering bays array
def test_order_bays_array()
  assert_equal([:a10, :a7, :a2, :c3, :c8, :c9, :b3, :b9], order_bays_array([:b9, :b3, :c8, :c9, :a10, :c3, :a2, :a7]))
  
end






end
