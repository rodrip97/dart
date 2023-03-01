import 'dart:html';

void main() {
  var calculator = LeapYearCalculator();

  for (var year = 2023; year <= 2024; year++) {
    if (calculator.isLeapYear(year)) {
      print('$year is a leap year! 😀');
    } else {
      print('$year is not a leap year! 😟');
    }
  }
}

class LeapYearCalculator {
  bool isLeapYear(int year) {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          return true; // divisible by 400, so leap year
        } else {
          return false; // divisible by 100 but not 400, so not a leap year
        }
      } else {
        return true; // divisible by 4 but not 100, so leap year
      }
    } else {
      return false; // not divisible by 4, so not a leap year
    }
  }
}
