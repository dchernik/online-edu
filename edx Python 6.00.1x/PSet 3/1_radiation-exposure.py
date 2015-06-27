def f(x):
    import math
    return 10*math.e**(math.log(0.5)/5.27 * x)

def radiationExposure(start, stop, step):
    '''
    Computes and returns the amount of radiation exposed
    to between the start and stop times. Calls the 
    function f (defined for you in the grading script)
    to obtain the value of the function at any point.
 
    start: integer, the time at which exposure begins
    stop: integer, the time at which exposure ends
    step: float, the width of each rectangle. You can assume that
      the step size will always partition the space evenly.

    returns: float, the amount of radiation exposed to 
      between start and stop times.
    '''
    answ = 0.0
    
    while start < stop:
        answ += f(start) * step
        start += step

    return answ

'''
Using recursion
def radiationExposure(start, stop, step):
    if round(stop - start, 2) == round(step, 2): return f(start) * step
    return f(start) * step + radiationExposure(start + step, stop, step)
'''
    
print radiationExposure(0, 5, 1)        #== 39.10318784326239
print radiationExposure(40, 100, 1.5)   #== 0.434612356115
print radiationExposure(0, 11, 1)       #== 62.0455982538
print radiationExposure(5, 11, 1)       #== 22.94241041057671
print radiationExposure(0, 4, 0.25)     #== 1148.6783342153556
print radiationExposure(5, 10, 0.25)    #== 513.4662018628549
print radiationExposure(0, 3, 0.1)      #== 559.2259707824549
print radiationExposure(600, 1200, 5)   #== 2.799597134148232