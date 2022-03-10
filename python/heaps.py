# In order to work with the Python array as tree nodes starting at 1,
# We create a list A[0,...,n] and ignore the 0th entry.
import random
import math
swaps = 0
A = [0, 10,1,9,2,8,3,7,4,6,5]
#for i in range(0,10):
#    A.append(random.randint(0,100))
heapsize = len(A)-1;
nodecount = len(A)-1
def maxheapify(i):
    global swaps
    leftnode = 2*i
    rightnode = 2*i+1
    largestnode = i
    if leftnode <= heapsize and A[leftnode] > A[largestnode]:
        largestnode = leftnode
    if rightnode <= heapsize and A[rightnode] > A[largestnode]:
        largestnode = rightnode
    if largestnode != i:
        temp = A[i]
        A[i] = A[largestnode]
        A[largestnode] = temp
        swaps += 1
        maxheapify(largestnode)
def converttomaxheap():
    for i in range(math.floor(heapsize/2),0,-1):
        maxheapify(i)
def heapsort():
    global heapsize
    global swaps
    converttomaxheap()
    print('After converttomaxheap:')
    print(A[1:])
    for i in range(nodecount,1,-1):
        temp = A[1]
        A[1] = A[i]
        A[i] = temp
        swaps += 1
        print('After switch:')
        print(A[1:])
        heapsize = heapsize - 1
        maxheapify(1)
        print('After maxheapify:')
        print(A[1:])
print(A[1:])
heapsort()
print(A[1:])
print(swaps)
