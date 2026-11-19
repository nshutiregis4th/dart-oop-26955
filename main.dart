// Part 1: The BusCard class
class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Method to show card information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Add money to the card when the amount is allowed
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Pay the fare if there is enough balance
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

// Part 2: StudentCard using inheritance
class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  // Show the normal card information and the student discount
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Apply the discount, then ask BusCard to process the payment
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}

// Part 3: Use the classes
void main() {
  // My numbers: D = 55, L = 5
  // Starting balance = 1550 RWF, Bus fare = 255 RWF, Discount = 15%
  int d = 55;
  int l = 5;
  int startingBalance = 1000 + (d * 10);
  int busFare = 200 + d;
  int studentDiscount = 10 + l;

  // Create a card and test the owner setter
  BusCard card = BusCard('Regis NSHUTI', startingBalance);
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Set my full name as the owner, then show the card information
  card.owner = 'Regis NSHUTI';
  card.showInfo();

  // TODO 6: Try a top-up that is too small, then a valid top-up
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay the bus fare twice, then show the card information
  card.pay(busFare);
  card.pay(busFare);
  card.showInfo();

  // TODO 8: Create a student card
  StudentCard studentCard =
      StudentCard('Regis NSHUTI', startingBalance, studentDiscount);

  // TODO 9: Pay the bus fare with the student card, then show its information
  studentCard.pay(busFare);
  studentCard.showInfo();
}