x = [1,0,1,1]
y = [0,0,1,0]

def add_two_complement(x,y)
  y = not_a(y)
  added = [1]
  for i in 0...x.length
    added[i+1] = (x[i] & y[i]) | (x[i] & added[i]) | (y[i] & added[i])
    added[i] = x[i] ^ y[i] ^ added[i]
  end
  added
end

def not_a(a)
  for i in 0...a.length
    if a[i] == 0 
      a[i] = 1
    else 
      a[i] = 0
    end
  end
  a
end

puts add_two_complement(x,y).to_s
