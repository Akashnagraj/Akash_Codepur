class BankAccount {
  num _balance = 0;

  void deposit(num amount) {
    if (amount > 0) {
      _balance += amount;
    } else
      throw Exception("Amount should be greater than 0");
  }

  void withdraw(num amount) {
    if (amount > 0) {
      _balance -= amount;
    } else
      throw Exception("Amount should be greater than 0");
  }

  num showBalance() {
    return _balance;
  }
}
