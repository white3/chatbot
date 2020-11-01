require 'bigdecimal'

class CalculatorModel
    def resolve(formula)
        items = formula.strip().match(/(\d+)\s*(\+|-|\/|\*)\s*(\d+)/)
        if items && items.length == 4
            left, right = BigDecimal(items[1]), BigDecimal(items[3])
            if items[2].eql?('+')
                @result = left + right
            elsif items[2].eql?('-')
                @result = left - right
            elsif items[2].eql?('*')
                @result = left * right
            else
                @result = left / right
            end
            return @result.to_s("F")
        else
            raise "This is an error formula."
        end
    end
end

# 取消以下测试, 可直接执行
#
if __FILE__ == $0
    cal = CalculatorModel.new
    puts cal.resolve(gets)
end
