def fun1(num,char)
    for i in 1..num
        puts char*i
    end
end




def fun2(str)
    if str.start_with?("if") 
        puts true
    else
        puts false
    end
end



def fun3(str)
    puts str[-1] << str[1...-1]  << str [0]
end 



def fun4(str)
    last_ch= str.length()-1 
    print  str.split('')[last_ch] + str + str.split('')[last_ch], "\n"
end 


def fun5(year)
    if((year%4)==0)
        if((year%100 !=0))
            return "#{year} is leap year"
        elsif((year%400) ==0)
            return "#{year} is leap year"
        end
    end
    return "#{year} is not leap year" 
end

def fun6(nums)
    return rotated = [nums[1], nums[2], nums[0]]
end


def fun7(nums)
    sum = 0
    i = 0
    while i < nums.length
        if(nums[i] == 17)
            i += 1
        else
            sum += nums[i]
        end
        i += 1
    end
    return sum
end


def fun8(nums, target)
    for i in 0..nums.length-2
        for j in i+1..nums.length-1
            if ((nums[i]+nums[j]) == target)
                return [i,j]
            end
        end
    end
    return -1
end



def fun9(s)
    n=-1
    while s.length != n
        n=s.length
        s=s.sub('()','')
        s=s.sub('[]','')
        s=s.sub('{}','')
        if s.length==0
            return 'Yes'
        end
    end
    return 'NO'
end
