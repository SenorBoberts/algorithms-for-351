def mergesort(a)
  if a.length > 1
    m = (a.length / 2).floor
    l = mergesort(a[0...m])
    r = mergesort(a[m...a.length])
    i = 0
    j = 0
    k = 0
    while i < l.length and j < r.length
      if l[i] <= r[j]
        a[k] = l[i]
        i += 1
        k += 1
      else
        a[k] = r[j]
        j += 1
        k += 1
      end
    end
    while i < l.length
      a[k] = l[i]
      i += 1
      k+= 1
    end
    while j < r.length
      a[k] = r[j]
      j += 1
      k += 1
    end
  end
  return a
end

#main

a = [16, 47, 30, 44, 37, 12];
puts (mergesort(a)).to_s

