// {{## BEGIN interfaces ##}}
class Person {
  final _name;        // IN the interface
  Person(this._name); // NOT IN the interface
  String greet(who)   // IN the interface
    => "$_name greets $who.";
}

class Imposter implements Person {
  final _name = "";   // must be present
  String greet(who)   // must be present
    => "Yeah, whatever, $who.";
}
greet(Person person) => person.greet("Bob");

main() {
  print(greet(new Person("Miguel")));
  print(greet(new Imposter()));
}
// {{## END interfaces ##}}
