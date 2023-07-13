void main() {
  // d. using catch
  throwError().catchError((error) {
    print('Error: $error');
  });
}

// creating Future which will throw an error
Future<void> throwError() {
  return Future.error(Exception("Some Error found!"));
}
