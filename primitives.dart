main() {
  // {{## BEGIN intsAndStrings ##}}
  var x = 1;  var y = 1.1;
  var exponents = 1.42e5;

  var one = int.parse('1'); assert(one == 1);
  var oneStr = 1.toString();
  assert(1 == (int.parse(1.toString())));

  var s1 = 'Hello ' 'world'
    " from Dart";
  print(s1);
  var s2 = '''
Multi-
line
strings
''';
  print (s2);
  var s3 = 'string interpolation';
  var s4 = 'Dart has $s3, which is handy';
    // Dart has string interpolation, which is handy
  // {{## END intsAndStrings ##}}

  // {{## BEGIN booleans ##}}
  var name ='Bob';
  if (name) {
    print('JavaScript says you have a name!');
      // dart --checked will throw an exception, because
      // 'name' is not a boolean type
  }

  if (1) {
    print('JavaScript prints this line because it thinks 1 is true.');
  } else {
    print('Dart in production mode prints this line.');
    // However, in checked mode, if (1) throws an exception.
  }
  // {{## END booleans ##}}

  print(x);
  print(y);
  print(exponents);
  print(oneStr);
  print(s4);
}
