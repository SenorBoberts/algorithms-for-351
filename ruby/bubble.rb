swaps = 0
# a = [31, 11, 41, 98, 32, 87]
a = [10,1,9,2,8,3,7,4,6,5]

for i in 0...(a.length - 1)
    puts a.to_s
    for j in 0...(a.length-i -1)
        if a[j] > a[j+1]
            a[j], a[j+1] = a[j+1], a[j]
            swaps += 1
        end
    end
    
end
 puts swaps
