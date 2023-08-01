import 'dart:async';

void main() {
  // Single-Subscription Stream
  Stream<int> singleStream = countNumbers();

  // Listener 1
  singleStream.listen((data) {
    print('Listener 1: $data');
  });

  // // Attempt to subscribe again (This will throw an error)
  // singleStream.listen((data) {
  //   print('Listener 2: $data');
  // });
}

Stream<int> countNumbers() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
