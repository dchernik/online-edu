'''
Write a program to calculate the credit card balance after one year if a person 
only pays the minimum monthly payment required by the credit card company each
month.
'''

balance = 4213
annualInterestRate = 0.2
monthlyPaymentRate = 0.04

monthlyRateMultiplier = annualInterestRate / 12 + 1
totalPaid = 0
for month in xrange(1, 13):
    print 'Month:', month
    payment = round(balance * monthlyPaymentRate, 2)
    totalPaid += payment
    print 'Minimum monyhly pyment:', payment
    balance = round((balance - payment) * monthlyRateMultiplier, 2)
    print 'Remaining balance:', balance
    if month == 12:
        print 'Total paid:', totalPaid
        print 'Remaining balance:', balance
