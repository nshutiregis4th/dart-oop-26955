// Part 1: BusCard class
class BusCard {
  // These fields store the card owner's name and balance.
  String _owner = '';
  int _balance = 0;

  // This constructor gives the card its owner and starting balance.
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // This getter lets me read the owner's name.
  String get owner {
    return _owner;
  }

  // This getter lets me read the balance without setting it directly.
  int get balance {
    return _balance;
  }

  // This setter changes the name only when it has at least 3 characters.
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // This method displays the card owner's name and current balance.
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // This method accepts top-ups only from 500 to 50000 RWF.
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // This method declines payment if the balance is too low.
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}