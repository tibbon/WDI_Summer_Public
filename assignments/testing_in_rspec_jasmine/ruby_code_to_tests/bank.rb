class Bank
  attr_accessor :name, :accounts
  def initialize(name)
    @name = name
    @accounts = {}
  end
  def create_account(name, deposit)
    @accounts[name] = deposit
  end
  def deposit(name, amount)
    @accounts[name] += amount
  end
  def withdraw(name, amount)
    if @accounts[name] && (amount <= @accounts[name]) && (amount >= 0)
      @accounts[name] -= amount
    else
      nil
    end
  end
  def balance(name)
    @accounts[name]
  end
end
