
a = [-3, 4, 7, 17, 20, 30, 40, 51, 105, 760]

target = 17

l = 0
r = a.length - 1

while l <= r
    c = ((l+r)/2).floor
    if a[c] == target 
        puts c
        return
    elsif target < a[c]
        r = c - 1
    elsif target > a[c]
        l = c + 1
    end
    puts "l: #{l}\nr: #{r}\nc: #{c}\n-------\n"
end
return
