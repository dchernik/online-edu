class BankAccount
  attr_reader :name, :balance
  
  def initialize(name, balance=100.0)
    @name = name
    @transactions = []
    @balance = balance
    add_transaction("First Deposit", 100)
  end
  
  def add_transaction(description, amount)
    @transactions << {description: description, amount: amount}
    @balance += amount
  end
  
  def credit(description, amount)
    add_transaction(description, amount)
  end
  
  def debit(description, amount)
      add_transaction(description, -amount)
  end
  
  def to_s
    "Name: #{name}, Balance: $#{sprintf("%0.2f", balance)}"
  end
  
  def print_register
    puts "#{name}'s Bank Account"
    puts "-" * 40

    puts "Description".ljust(30) + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
    end

    puts "-" * 40
    puts "Balance:".ljust(30) + sprintf("%0.2f", balance).rjust(10)
    puts "-" * 40
  end
end
  
ba = BankAccount.new('Denis')
p ba.inspect
ba.debit("Groceries", 40)
p ba.inspect
p "Your balance is $" + sprintf("%0.2f", ba.balance)
p ba.to_s
p ba.print_register