import 'package:throttleDebounce/throttleDebounce.dart';
import 'dart:html' as html;


main() {
  html.Element input1 = html.querySelector('#inputBox1');
  var debouncer = new Debouncer(const Duration(milliseconds:250), callback, ['called'], true); 
  input1.onKeyUp.listen((e) {
    debouncer.debounce();
  });
  html.Element input2 = html.querySelector('#inputBox2');
  var throttler = new Throttler(const Duration(milliseconds:250), callback, ['throttled'], true);
  input2.onKeyUp.listen((e) {
    throttler.throttle();
  });
}

callback(List args) {
  print(args[0]);
}

