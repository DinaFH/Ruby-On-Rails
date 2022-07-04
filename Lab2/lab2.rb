class User 
    attr_accessor :name
    @@name='User'
    def initialize(name="User")
        @name = name
    end
    def self.name()
        @@name
    end    
    def changeName(new_name)
        @name=new_name
    end
    def setName(name)
        @name = name
    end
    def getName()
        @name
    end
end

class Maths
    @@result=nil
    def initialize(num1,num2,op)
        if(num1.is_a? Integer and num2.is_a? Integer)
            case op
            when "+"
                @@result=num1+num2
            when "-"
                @@result=num1-num2
            when "*"
                @@result=num1*num2
            when "/"
                if(num2!=0)
                    @@result=num1/num2
                else
                    p "Error Div by 0"
                end
            else
                p "Error Invalid Operation"
            end
        end
    end
    def ret_result
        @@result
    end
end



module MyModule
    require 'date'
    class Person
        attr_accessor :fname, :lname, :bdate, :age
        def initialize()
            @fname=""
            @lname=""
            @bdate=Date.today
            @age=0
        end
        def getData
            puts "Enter first name: "
            @fname=gets.chomp
            puts "Enter last name: "
            @lname=gets.chomp
            puts "Enter BirthDay: "
            @bdate=Date.parse(gets.chomp)
            now=Time.now.utc.to_date
            @age = now.year - @bdate.year - (now.month > @bdate.month || (now.month == @bdate.month && now.day >= @bdate.day) ? 0 : 1)
        end
        def welcome
            puts "Welcome, #@fname #@lname"
            now = Time.now.utc.to_date
            this_year_birthday = @bdate
            this_year_birthday = Date.parse("#{now.year}-#{@bdate.month}-#{@bdate.day}")
            days = (now - this_year_birthday).to_i
            if days < 0
            days += 365
            end
            months = (days/30).to_i
            puts "Your age is: #@age years, #{months} months and #{days%30} days"
        end
    end
end
