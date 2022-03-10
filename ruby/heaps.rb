def maxheapify(tree,i,n)
  leftnode = 2*i
  rightnode = 2*i
  largestnode = i
  if leftnode <= n and tree[leftnode] > tree[largestnode]
    largestnode = leftnode
  end
  if rightnode <= n and tree[rightnode] > tree[largestnode]
    largestnode = rightnode
  end
  if largestnode != i 
    tree[i], tree[largestnode] = tree[largestnode], tree[i]
    maxheapify(tree,largestnode,n)
  end
  puts tree.to_s
end

def converttomaxheap(tree,n)
  for i in ((n/2).floor).downto(1)
    maxheapify(tree,i,n)
  end
end

def heapsort(a,n)
  converttomaxheap(a,n)
  for i in n..2
    a[1], a[i] = a[i], a[1]
    maxheapify(a,1,i-1)
  end
end

a = [10,8,3,4,5,2,1]
puts maxheapify(a, 2, a.length)
puts a.to_s
