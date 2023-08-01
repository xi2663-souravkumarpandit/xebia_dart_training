import 'dart:async';

void main() {
  // Broadcast Stream
  Stream<int> broadcastStream = buttonClicks();
  final stream = broadcastStream.asBroadcastStream(
    onListen: (subscription) {
      print("Hello");
    },
    onCancel: (subscription) {
      print("cancled");
    },
  );
  // Listener 1
  stream.listen((data) {
    print('Listener 1: Button Clicked $data times');
  });

  // Listener 2
  stream.listen((data) {
    print('Listener 2: Button Clicked $data times');
  });
}

Stream<int> buttonClicks() async* {
  int count = 0;
  while (true) {
    await Future.delayed(Duration(seconds: 1));
    yield ++count;
  }
}
