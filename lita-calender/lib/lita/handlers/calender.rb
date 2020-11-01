#!/user/bin/ruby -w
# -*- coding: UTF-8 -*-
require_relative "CalenderModel"

module Lita
  module Handlers
    class Calender < Handler
      # insert handler code here
      route(
        /^calender\s+(\d+-\d+)$/i,
        :respond_with_calender,
        command: true,
        help: { 'calender 2015-8' => 
          "不是闰年。该月日历为，\n" +
          " Sun Mon Tue Wed Thu Fri Sat\n" +
          "                           1\n" +
          "   2   3   4   5   6   7   8\n" +
          "   9  10  11  12  13  14  15\n" +
          "  16  17  18  19  20  21  22\n" +
          "  23  24  25  26  27  28  29\n" +
          "  30  31"}
      )
      
      @@calender = CalenderModel.new()

      def respond_with_calender(response)
        inputs = response.match_data.captures.first
        begin
          result = @@calender.display(inputs)
        rescue Exception => e
          result = e.message()
        ensure
          response.reply "#{result}"
        end
      end

      Lita.register_handler(self)
    end
  end
end
