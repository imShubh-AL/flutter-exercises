// b. rap a normal function with a function that returns Future
void main() {
  print(sum(5, 10));
}

//    b. Wrapping a normal function with a function that returns Future:
// Normal function
int sum(int a, int b) {
  return a + b;
}

// wrapping with normal function sum with funstion which will return future
Future<int> sumAsync(int a, int b) {
  return Future<int>(() => sum(a, b));
}
