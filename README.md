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
## The Output of main.dart
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


## Part 4: Bug hunt

### Bug table

| Bug | The line | Why it is wrong (my words) | My fix |
|---|---|---|---|
| 1 | Lines 2–3: `_brand` and `_battery` | Dart needs starting values for these non-nullable fields. | I initialized them to `''` and `0`. |
| 2 | Line 18: `SmartPhone(...)` | The `Phone` constructor needs `brand` and `battery`, but this constructor does not pass them to the parent. | I added `: super(brand, battery)`. |
| 3 | Line 22: `@override` above `restart()` | `Phone` has no `restart()` method for `SmartPhone` to override. | I added a `restart()` method to `Phone`. |
| 4 | Missing setter in `Phone`; error appeared at line 30 | I assigned `p.battery`, but `Phone` only had a getter. | I added a setter that accepts values from 0 to 100. |
| 5 | Line 31: `print(p.battery());` | `battery` is a getter, not a method. | I changed it to `print(p.battery);`. |
| Not a bug | Line 30: `p.battery = 100;` | This is valid once the setter exists, and 100 is allowed. | No fix was needed for this line. |

### Output after fixing

```text
100
```

## Part 5: Prediction
I think the first output will be 1. The bag starts at 0, and add() makes it 1. Setting the count to -5 will be ignored because the setter only accepts values of 0 or more.

I think the second output will be 5. Each BigBag.add() adds two items. I call it twice, so the count becomes 4. Then I add 1, making it 5.
