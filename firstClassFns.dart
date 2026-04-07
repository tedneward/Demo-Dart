bool shortName(string name) => name.length < 10;

bool printName(string name) {
  print("$name is easy to vote for.");
}

void main(List<string> args) {
  List<string> candidates = [
    "Barack Obama", "Joe Biden",
    "John McCain", "Sarah Palin",
    "Mickey Mouse", "Goofy"
  ];
  var shortList = candidates.where(shortName);
  shortList.forEach(printName);
}
