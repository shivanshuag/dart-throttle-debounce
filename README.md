# Dart throttle/debounce
A library for throttling or debouncing frequently occuring events. This package is inspired by jquery throttle/debounce http://benalman.com/projects/jquery-throttle-debounce-plugin

## Example
```dart
import 'package:throttleDebounce/throttleDebounce.dart'
import 'dart:html' ad html
main() {
    html.Element input = html.querySelector('#inputBox');
    List args = ['argument1', 'argument2'];
    var debouncer = new Debouncer(const Duration(milliseconds:250), callback, args);
    input.onKeyUp.listen((e) {
        debouncer.debounce();
    });
}

void callback(List args) {
    print(args[0]); //will print 'argument1'
    print(args[1]); //will print 'argument2'
}
```

## Throttle
Execute a frequently called function only once in a fixed interval. See http://benalman.com/code/projects/jquery-throttle-debounce/examples/throttle/ for example of throttling.

### Usage and Arguments
```dart
var throttler = new Throttler(Duration delay, callback, List args, [bool noTrailing]);
element.on('someevent').listen((e) {
    throttler.throttle();
});
```
** delay - ** (const Duration) A dart constant of type Duration which.

** callback - ** (Function) A function which is executed after delay milliseconds.

** args - ** (List) argument passed to the callback. (Dart does not support variable number of arguments to a function, so we have to pass the arguments in a list)

** noTrailing - ** (bool) Optional, defaults to false. If noTrailing is true, callback will be called after delay only when the throttle function is being called. If set to false, there will also be one trailing call to the callback after delay after the throttle function has stopped executing.


## Debouncing
Debounces the execution of a function. This ensures that the function is executed only once, either at the beginning of a series of calls or at the end. See http://benalman.com/code/projects/jquery-throttle-debounce/examples/debounce/ for example of debouncing.

### Usage and Arguments

```dart
var debouncer = new Debouncer(Duration delay, callback, List args, [bool atBegin]);
element.on('someevent').listen((e) {
    debouncer.debounce();
});
```
** delay - ** (const Duration) A dart constant of type Duration which.

** callback - ** (Function) A function which is executed after delay milliseconds.

** args - ** (List) argument passed to the callback. (Dart does not support variable number of arguments to a function, so we have to pass the arguments in a list)

** atBegin - ** (bool) Optional, defaults to false. If atBegins is true, the callback will be executed at the beginning of the debounced call. If there is a pause of delay duration, callback will again be called when the debounced call starts again. If atBegins is false, callback will be executed whenever there is a pause of delay duration between the debounce calls i.e. at the end.


## Licenses
Licensed under MIT

## Acknowledgement
Inspired by Jquery throttle/debounce plugin of Ben Alman (http://benalman.com)
