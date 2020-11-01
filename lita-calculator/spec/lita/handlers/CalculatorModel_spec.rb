#!/user/bin/ruby -w
# -*- coding: UTF-8 -*-
#require "spec_helper"
require_relative "./../../../lib/lita/handlers/CalculatorModel.rb"
require "test/unit"

class TestHomework < Test::Unit::TestCase
  def test_calculator_model
    assert_equal("2525251999999999997474748.0", 
        CalculatorModel.new().resolve("999999999999999999 * 2525252") )
    assert_equal("396000082368.017132151563487525205405243", 
        CalculatorModel.new().resolve("999999999999999999 / 2525252") )
    assert_equal("1000000000002525251.0", 
        CalculatorModel.new().resolve("999999999999999999 + 2525252") )
    assert_equal("999999999997474747.0", 
        CalculatorModel.new().resolve("999999999999999999 - 2525252") )
    assert_raise( RuntimeError ) { CalculatorModel.new().resolve('a') }
  end
end
