class Person {
  String firstName; String lastName;
  Person(this.firstName, this.lastName);
}
class Dude extends Person {
  Dude() : super("The Dude", "");

  void drinkBeverage() {
    print("Be careful, man! There's a beverage here!");
  }

  @override   // yes, I really mean to override this method
  void noSuchMethod(Invocation operation) {
    print("The ${operation.memberName} is not the point, Donny!");
  }
}

void main() {
  new Dude().work();
}
