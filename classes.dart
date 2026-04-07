// {{## BEGIN simple ##}}
class Person {
  // These are all public
  String lastName = "(None)";
  String firstName; // initially null

  // These are private (_-prefixed)
  num _age = 0;

  Person(this.firstName, this.lastName);
  Person.singular(String firstName) {
    this.firstName = firstName;
  }
}

void speakers() {
  Person speaker = new Person("Ted", "Neward");
  Person theDude = new Person.singular("The Dude");
  speaker.firstName = "The Dude";
}
// {{## END simple ##}}

// {{## BEGIN chaining-constructor ##}}
class Point {
  num x; num y;

  Point(this.x, this.y);

  // Chained constructor
  Point.alongXAxis(num x) : this(x, 0);
}
// {{## END chaining-constructor ##}}

// {{## BEGIN immutable-constructor ##}}
class FixedPoint {
  final num x; final num y;

  const FixedPoint(this.x, this.y);

  static final FixedPoint ORIGIN =
    const FixedPoint(0,0);
}
// {{## END immutable-constructor ##}}

// {{## BEGIN factory ##}}
class OverdoneDemo {
  final String name;
  static final OverdoneDemo _instance = 
    new OverdoneDemo._internal("Singleton!");
  
  OverdoneDemo._internal(this.name);

  factory OverdoneDemo() {
    return _instance;
  }
}

void overdone() {
  var od = new OverdoneDemo();
  print(od.name);
  print(new OverdoneDemo().name);
  print(new OverdoneDemo().name);
}
// {{## END factory ##}}

// {{## BEGIN properties ##}}
class Rectangle {
  num left; num top; num width; num height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
      set right(num value) => left = value - width;
  num get bottom => top + bottom;
      set bottom(num value) => top = value - height;
}
// {{## END properties ##}}

// {{## BEGIN operators ##}}
class Vector {
  final int x; final int y;
  const Vector(this.x, this.y);

  Vector operator +(Vector v) {
    return new Vector(x + v.x, y + v.y);
  }
  Vector operator -(Vector v) {
    return new Vector(x - v.x, y - v.y);
  }
}

main() {
  final v = new Vector(2, 3);
  final w = new Vector(2, 3);
  assert((v+w).x == 4 && (v+w).y == 6);
}
// {{## END operators ##}}

void _bootNetworkInterface() { }
void _initializeMemory() { }
void _upgradeApps() { }
void _illuminateDisplay() { }
void _activateIRSensor() { }

// {{## BEGIN inheritance ##}}
class TV {
  void turnOn() {
    _illuminateDisplay();
    _activateIRSensor();
  }
}

class SmartTV extends TV {
  @override
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }
}
// {{## END inheritance ##}}

// {{## BEGIN noSuchMethod ##}}
// {{## END noSuchMethod ##}}

// {{## BEGIN interfaces ##}}
class ThoughtLeader {
  String _name; // part of the interface, but not always visible

  ThoughtLeader(this._name); // not part of the interface

  String greet(who) => "Hello, $who. I am $_name, a Thought Leader.";
}

class Imposter implements ThoughtLeader {
  @override String _name = ""; // required -- part of the interface

  String greet(who) => "Hello, $who. Don't you know who I am?";
}
// {{## END interfaces ##}}

abstract class Aggressive { }
abstract class Demented { }

// {{## BEGIN mixins ##}}
abstract class Musical {
  bool canPlayPiano = false; bool canCompose = false; bool canConduct = false;
  void entertainMe() {
    if (canPlayPiano) { print("playig piano"); }
    else if (canConduct) { print("waving hands"); }
    else { print("humming"); }
  }
}

class Musician extends Object with Musical { }
class Maestro extends Person 
  with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    super.singular(maestroName);
    canConduct = true;
  }
} 
// {{## END mixins ##}}