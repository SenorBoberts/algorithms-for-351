swaps = 0
#a = [76, 92, 91, 55, 77, 96, 26, 21, 77, 88]
a = [10,1,9,2,8,3,7,4,6,5]

for i in 0...(a.length - 1)
    miniindex = i
    for j in (i+1)...(a.length)
        if a[j] < a[miniindex]
            miniindex = j
        end
    end
    a[i], a[miniindex] = a[miniindex], a[i]
    swaps += 1
    puts a.to_s
end

puts swaps
