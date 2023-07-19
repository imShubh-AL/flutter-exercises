void main() {
  printValue();
}

void printValue() async {
  try {
    await throwError();
  } catch (error) {
    print('Error: $error');
  }
}

Future<void> throwError() {
  return Future.error(Exception("Some Error found!"));
}
