void main() {
  // c. using then
  getValue().then((value) => {
        print(value),
      });
}

Future<String> getValue() {
  return Future.value("Hello World");
}
