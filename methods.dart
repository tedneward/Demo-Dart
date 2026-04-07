class Person {
  String firstName; // initially null
  String lastName = "(None)";
    // These are all public
  num _age = 0;
    // These are private (_-prefixed)

  Person(this.firstName, this.lastName);
    // sets these fields before constructor body runs

  Person.singular(String firstName) : this(firstName, "(None)");
    // "redirects" to the first constructor

// {{## BEGIN methods ##}}
  // assume Person from earlier

  String greetingsTo(String other) {
    return "$firstName sends greetings to $other";
  }

  void drinkBeverage();
    // abstract method, does NOT imply abstract class
    // calling this on a Person yields a runtime error though

  string get fullName =>
      firstName + " " + (lastName != "(None)" ? lastName : "");
  num get age            => _age;
      set age(num value) => _age = (value > 0 ? value : _age);
// {{## END methods ##}}
}

void main() {
  Person speaker = new Person.singular("The Dude");
  speaker.firstName = "The Dude";
}
