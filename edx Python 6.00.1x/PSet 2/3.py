'''
Using bisection search to make program faster
'''

balance = 320000
annualInterestRate = 0.2

runningBalance = balance
monthlyRateMultiplier = annualInterestRate / 12.0 + 1
lowestPayement = balance / 12.0
highestPayment = balance * (annualInterestRate + 1) / 12.0
payment = (highestPayment + lowestPayement) / 2.0
while abs(runningBalance) >= 0.01:
    for month in xrange(1, 13):
        runningBalance = (runningBalance - payment) * monthlyRateMultiplier
    if runningBalance >= 0.01: 
        lowestPayement = payment
        payment = (highestPayment + lowestPayement) / 2.0
        runningBalance = balance
    elif runningBalance < -0.01:
        highestPayment = payment
        payment = (highestPayment + lowestPayement) / 2.0
        runningBalance = balance

print 'Lowest Payment:', round(lowestPayement, 2)