
a = [57, 91, 64, 13, 27, 88, 63]

for i in 0...a.length
    key = a[i]
    j = i - 1
    while j >= 0 and key < a[j]
        a[j+1] = a[j]
        j = j - 1
    end
    a[j+1] = key
    puts a.to_s
end
