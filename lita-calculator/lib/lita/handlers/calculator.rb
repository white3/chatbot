require_relative "CalculatorModel"

module Lita
  module Handlers
    class Calculator < Handler
      # insert handler code here
      route(
        /^calc\s+(\d+\s*[\+-\/\*]\s*\d+)$/i,
        :respond_with_calculator,
        command: true,
        help: { 'calc 999999999999999999 * 2525252' => 
          " = 2525251999999999997474748.0"}
      )
      
      @@calculator = CalculatorModel.new()

      def respond_with_calculator(response)
        inputs = response.match_data.captures.first
        begin
          result = @@calculator.resolve(inputs)
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
