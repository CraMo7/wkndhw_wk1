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

def test_given_bay_return_item()
  assert_equal("nail filer", given_bay_return_item(@product_bay_list, "b5"))
  
end

def test_given_item_return_bay()
  assert_equal("b5", given_item_return_bay(@product_bay_list, "nail filer"))
  
end

  def test_given_bays_list_return_items_list_and_num_of_bays_apart()
    assert_equal(["nail filer", "cookie jar", "tooth paste"], given_bays_list_return_items_list(@product_bay_list, "b5, b10, and b6"))
    assert_equal(5, given_bays_list_return_bays_apart(@product_bay_list, "b5, b10, and b6"))
  end







end  