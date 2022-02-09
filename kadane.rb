a = [1, -1, -3, -1, -5]

maxoverall = a[0]
maxendingati = a[0]

for i in 1...a.length
    if maxendingati + a[i] > a[i]
        maxendingati += a[i]
    else
        maxendingati = a[i]
    end

    if maxoverall < maxendingati
        maxoverall = maxendingati
        puts maxoverall
    end
end
