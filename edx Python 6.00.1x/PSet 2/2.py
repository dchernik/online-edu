'''
Now write a program that calculates the minimum fixed monthly payment needed 
in order pay off a credit card balance within 12 months. By a fixed monthly 
payment, we mean a single number which does not change each month, but instead 
is a constant amount that will be paid each month.
'''

balance = 3329
annualInterestRate = 0.2

runningBalance = balance
monthlyRateMultiplier = annualInterestRate / 12 + 1
lowestPayement = balance / 12
lowestPayement -= lowestPayement % 10
while runningBalance > 0:
    for month in xrange(1, 13):
        runningBalance = (runningBalance - lowestPayement) * monthlyRateMultiplier
    if runningBalance > 0: 
        lowestPayement += 10
        runningBalance = balance

print 'Lowest Payment:', lowestPayement