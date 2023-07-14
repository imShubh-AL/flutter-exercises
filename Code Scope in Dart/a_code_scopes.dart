// Top-level scope
const globalVar = 'This is a Global Variable';

void main() {
  // Block-level scopes
  const localVar = 'This is a Local Variable';

  print(globalVar);
  print(localVar);

  // Class-level scope
  final myObj = MyClass();
  myObj.myMethod();
}

class MyClass {
  void myMethod() {
    // Method-level
    final methodVar = 'This is a Method Variable';
    print(methodVar);
  }
}
