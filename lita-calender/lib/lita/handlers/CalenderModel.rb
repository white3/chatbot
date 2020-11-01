#!/user/bin/ruby -w
# -*- coding: UTF-8 -*-
#
class CalenderModel
    @@MONTH = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    @@space4, @@space3, @@space2 = "    ", "   ", "  "

    def check_date(date="2020-10")
        items = date.strip().match(/(\d+)-(\d+)/)
        if items && items.length == 3
            if ( items[2].to_i>0 && items[2].to_i<13 ) # check month
                return items[1].to_i, items[2].to_i
            end
        end
        raise "This is an error date."
    end

    def display(date="2020-10")
        year, month = check_date(date)
        result = ""
        if year%4 != 0 || year%100==0 && year%400!=0
            result += "不是闰年。该月日历为，\n"
            @@MONTH[2] = 28
        else
            result += "是闰年。该月日历为，\n"
            @@MONTH[2] = 29
        end

        sum = (year-1)/4-(year/100)+(year/400)+(year-1)*365
        (1..month-1).each do |i|
            sum += @@MONTH[i]
        end
        first_day = ((sum)%7+1)%7

        # display calender
        result += " Sun Mon Tue Wed Thu Fri Sat\n#{@@space4*(first_day)}"
        (1..@@MONTH[month]).each do |i|
            if first_day%7==0 && first_day != 0
                result += "\n"
            end
            if i>9
                result += "#{@@space2}#{i}"
            else
                result += "#{@@space3}#{i}"
            end    
            first_day+=1
        end
        return result
    end
end
