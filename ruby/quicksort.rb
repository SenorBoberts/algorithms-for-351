a = [3,10,7,4,3,5,6,4]

def quicksort(a,l,r)
  pivot_val = a[r]
  t = l
  for i in l...r
    if a[i] <= pivot_val
      a[t], a[i] = a[i], a[t]
      t += 1
    end
  end
  a[t], a[r] = a[r], a[t]
  return t
end

quicksort(a, 0, a.length - 1)

puts a.to_s
