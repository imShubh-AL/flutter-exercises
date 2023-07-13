void main() {
  printValueUsingAwait();
}

Future<String> getValue() {
  return Future.value("Hello World");
}

//e. using await
void printValueUsingAwait() async {
  final value = await getValue();
  print(value);
}
