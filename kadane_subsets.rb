
a = [1, 2, 3, 4, 5, 6]

maxoverall = a[0]
maxendingati = a[0]

odd_maxoverall = a[1]
odd_maxendingati = a[1]

for i in 2...a.length
    if i % 2 == 0
        if maxendingati + a[i] > a[i]
            maxendingati += a[i]
        else
            maxendingati = a[i]
        end

        if maxoverall < maxendingati
            maxoverall = maxendingati
        end
    else
        if odd_maxendingati + a[i] > a[i]
            odd_maxendingati += a[i]
        else
            odd_maxendingati = a[i]
        end

        if odd_maxoverall < odd_maxendingati
            odd_maxoverall = odd_maxendingati
        end
    end
end

if maxoverall > odd_maxoverall
    puts maxoverall
else
    puts odd_maxoverall
end