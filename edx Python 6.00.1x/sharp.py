# def sharp(x):
#   answ = 2
#   for i in xrange(3, x + 1):
#     answ **= i
#   return answ

# RECURSIVE
def sharp(x):
  return x if x == 2 else sharp(x - 1) ** x
  
def num_digits(n):
  return len(str(n))

result = num_digits(sharp(7)) + 2 * num_digits(sharp(6)) + num_digits(sharp(5)) + num_digits(sharp(4))
print result

print sharp(2) == 2
print sharp(3) == 8
print sharp(4) == 4096

def f(n):
   """
   n: integer, n >= 0.
   """
   if n == 0:
      return 1
   else:
      return n * f(n-1)
      
print f(3)
print f(1)
print f(0)

def FancyDivide(numbers, index):
    try:
        try:
            denom = numbers[index]
            for i in range(len(numbers)):
                numbers[i] /= denom
        except IndexError, e:
            FancyDivide(numbers, len(numbers) - 1)
        else:
            print "1"
        finally:
            print "0"
    except ZeroDivisionError, e:
        print "-2"
        
print '-'*11        
FancyDivide([0, 2, 4], 0)