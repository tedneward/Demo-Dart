void main() {
  // {{## BEGIN lists ##}}
  var bowlingLeague = <String>["Walter", "Donny", "The Dude"];
  var names = new List<String>(); // same as bowlingLeague
  names.add("Nihilists");
  // {{## END lists ##}}

  // {{## BEGIN maps ##}}
  var bowlingScores = <String, int>{
    "Walter":198,
    "Donny":196,
    "The Dude":217,
  };
  var scores = new Map<String,int>.fromEntries(bowlingScores.entries);
  scores["Nihilists"] = 0;
  // {{## END maps ##}}

  // {{## BEGIN sets ##}}
  var uniqueNames = new Set<String>.from(bowlingLeague);
  print(uniqueNames is Set<String>); // true
  // {{## END sets ##}}
}
