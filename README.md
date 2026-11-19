# Dart OOP Assignment: Kigali Bus Card

**Name:** Regis NSHUTI  
**Student ID:** 26955

## My numbers
- D = 55
- L = 5
- Starting balance = 1550 RWF
- Bus fare = 255 RWF
- Student discount = 15%

## Part 1: Why no setter for balance?
I did not add a direct setter for the balance because it could let someone change the balance to an invalid amount. The topUp and pay methods control balance changes using the card rules.
## Output of main.dart
PS D:\GitHub\dart-oop-26955> dart run main.dart
Error: name too short
Owner: Regis NSHUTI | Balance: 1550 RWF
Owner: Regis NSHUTI | Balance: 1550 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 255 RWF
Paid 255 RWF
Owner: Regis NSHUTI | Balance: 3040 RWF
Student discount: 38 RWF
Paid 217 RWF
Owner: Regis NSHUTI | Balance: 1333 RWF
Student card: 15% off
