bool isRaining() { return false; }
bool isSnowing() { return false; }

void doOpen() { }
void doReceive() { }
void doAck() { }

void main() {
// {{## BEGIN if-else ##}}
  if (isRaining()) {
    print("Welcome to Seattle");
  } else if (isSnowing()) {
    print("Welcome to... uh... the US");
  } else {
    print("Welcome to Las Vegas");
  }
// {{## END if-else ##}}

// {{## BEGIN for ##}}
  var list = [1,2,3];
  for (var i = 0; i<list.length; i++)
    print(list[i]);
  for (var a in list)
    print(a);
  // But prefer "forEach"
  list.forEach( (it) => print(it) );
// {{## END for ##}}

// {{## BEGIN while ##}}
  while (isRaining()) {
    print("Stay indoors");
  }

  do {
    print("Writing code while I stay indoors");
  } while(isRaining());
// {{## END while ##}}

// {{## BEGIN switch ##}}
  var command = "OPEN";
  switch (command) {
    case 'OPEN':
      doOpen();
      break;  // mandatory!

    case 'OPENING':
    case 'CLOSING':
      // Fall-through is allowed w/ no code
      print("Nothing important going on");
      break; // but this is mandatory since there is code

    case 'RECEIVING':
      doReceive();
      continue doAck;

doAck:
    case 'ACKING':
      doAck();
      break;

    case 'CLOSED':
      print("Now closed");
  }
// {{## END switch ##}}
}
