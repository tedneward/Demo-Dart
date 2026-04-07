import 'dart:html';

main() {
  var button = new ButtonElement();
  button..id = 'confirm'
        ..text = 'Click to Confirm'
        ..classes.add('important')
        ..onClick.listen((e) => window.alert('Confirmed!'));
  querySelector('#body').children.add(button);
}
