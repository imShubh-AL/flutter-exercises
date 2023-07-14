// 1. Future in Dart

// a. Different ways in which Future can be used:
import 'dart:async';

void main() async {
  print(await getValue());

  print(await delay());

  print(throwError());
}

// creating future with value
Future<String> getValue() {
  return Future.value("Hello World");
}

// creating future which will complete after some delay
Future<int> delay() {
  return Future.delayed(Duration(seconds: 2), () => 19);
}

// creating Future which will throw an error
Future<void> throwError() {
  return Future.error(Exception("Some Error found!"));
}
