def fn(L):
    L.append(4)
x = [1,2,3]
fn(x[:])
# print x

print '-'*11
''' Problem 8 '''

def f(s):
    return 'a' in s
def satisfiesF(L):
    """
    Assumes L is a list of strings
    Assume function f is already defined for you and it maps a string to a Boolean
    Mutates L such that it contains all of the strings, s, originally in L such
            that f(s) returns True, and no other elements
    Returns the length of L after mutation
    """
    # Your function implementation here
    i = 0
    while i < len(L):
      if not f(L[i]): L.pop(i)
      else: i += 1
    return len(L)
L = ['a', 'b', 'a']
print satisfiesF(L)
print L

print '-'*11
''' Problem 7 '''

def keysWithValue(aDict, target):
    '''
    aDict: a dictionary
    target: an integer
    '''
    # Your code here 
    answ = []
    for k,v in aDict.iteritems():
      if v == target: answ.append(k)
      
    answ.sort()
    return answ
      
print keysWithValue({1: 1, 3: 0, 5: 0, 6: 0, 7: 2, 8: 3, 10: 1}, 0)
print keysWithValue({}, 1)
print keysWithValue({0: 1, 9: 1, 2: 2, 6: 2, 8: 0}, 0)

print '-'*11
''' Problem 6 '''

def sumDigits(N):
    '''
    Write a recursive Python function, given a non-negative integer N, 
    to calculate and return the sum of its digits.
    
    N: a non-negative integer
    '''
    # Your code here
    if N < 10: return N
    return N % 10 + sumDigits(N / 10)
    
print sumDigits(123)

print '-'*11
''' Problem 5 '''

def lessThan4(aList):
    '''
    Write a Python function that returns the sublist of 
    strings in aList that contain fewer than 4 characters.
    aList: a list of strings
    '''
    # Your code here
    answ = []
    for word in aList: 
      if len(word) < 4: answ.append(word)
    return answ
    
print lessThan4(['fpzj', '', 'Nurxx', 'iqa', 'uI', 'vBxiumgUe', 'qWTUT', 'NRSXlE', 'Js'])
print lessThan4(['', 'mbSg', 'mVEHqRjX'])
print lessThan4(['Deb', 'aeOc', 'Yng', 'FyKM', 'vEg', 'uFGvXoEsaK', 't', 'xcqKL', 'XmaZ', 'mRlN'])

print '-'*11
''' Problem 4 '''
    
def myLog(x, b):
    '''
    x: a positive integer
    b: a positive integer; b >= 2

    returns: log_b(x), or, the logarithm of x relative to a base b.
    '''
    # Your Code Here
    exp = 0
    while b**exp <= x: exp += 1
    return exp - 1
    
print myLog(16, 2)
print myLog(15, 3)

print '-'*11
