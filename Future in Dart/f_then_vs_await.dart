//f. Difference between then vs await

void main() {
  // using then for multilple async operations
  getValue().then((value) {
    return Future.delayed(Duration(seconds: 1), () => value.toUpperCase());
  }).then((uppercasedvalue) {
    print(uppercasedvalue);
  });

  //using await
  printUppercasedValue();
}

Future<String> getValue() {
  return Future.value("Hello World");
}

// using await for execution of async operations
void printUppercasedValue() async {
  final value = await getValue();
  final uppercasedValue = await Future.delayed(Duration(seconds: 1), () => value.toUpperCase());
  print(uppercasedValue);
}
