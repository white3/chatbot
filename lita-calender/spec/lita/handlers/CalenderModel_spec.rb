#!/user/bin/ruby -w
# -*- coding: UTF-8 -*-
#require "spec_helper"
require_relative "./../../../lib/lita/handlers/CalenderModel.rb"
require "test/unit"

class TestHomework < Test::Unit::TestCase
  def test_calender_model
    assert_equal("不是闰年。该月日历为，\n" +
        " Sun Mon Tue Wed Thu Fri Sat\n" +
        "                           1\n" +
        "   2   3   4   5   6   7   8\n" +
        "   9  10  11  12  13  14  15\n" +
        "  16  17  18  19  20  21  22\n" +
        "  23  24  25  26  27  28  29\n" +
        "  30  31", CalenderModel.new().display("2015-8") )
    assert_equal("是闰年。该月日历为，\n" +
      " Sun Mon Tue Wed Thu Fri Sat\n" +
      "           1   2   3   4   5\n" +
      "   6   7   8   9  10  11  12\n" +
      "  13  14  15  16  17  18  19\n" +
      "  20  21  22  23  24  25  26\n" +
      "  27  28  29  30  31", CalenderModel.new().display("2400-8") )
    assert_raise( RuntimeError ) { CalenderModel.new().display('a-a') }
  end
end
