void printNumber(num number) {
  print('The number you passed is $number.');
}

void printAnotherNumber(number) => print('Here is $number.');

void main() {
  var printIt = (number) => print('Yet again, $number.');

  printNumber(27);
  printAnotherNumber(27);
  printIt(27);
}
