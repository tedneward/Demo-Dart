void doSomething({bool printIt: false, bool logIt: true}) {
  if (printIt) {
    print("We're printing something");
  }
  if (logIt) {
    print("We're logging something");
  }
}

void logIt(String msg, [String language = 'English']) {
  print("We're logging $msg in $language.");
}

void main() {
  doSomething(printIt: true, logIt: false);
  logIt("Hello, world!");
}
