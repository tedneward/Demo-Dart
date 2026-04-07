// "function" is the return type, not a keyword!
Function makeAdder(num addBy) {
  // Not seen outside of makeAdder()
  adder(num i) { return addBy + i; }
  return adder;
}

void main() {
  var addBy2 = makeAdder(2);   assert(addBy2(3) == 5);
  var addBy4 = makeAdder(4);  assert(addBy4(3) == 7);

  // Closures capture by-value not by-reference
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
    // prints 0, 1; in JavaScript, this would be 2, 2
}
