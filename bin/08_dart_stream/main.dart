import 'dart:async';

void main() async {
  // Create a StreamController to manage the stream
  var streamController = StreamController<int>();

  // Create a Stream from the StreamController
  var stream = streamController.stream;

  // Listen to the stream for events
  final subscription = stream.listen((data) {
    print('Received: $data');
  });

  // Add data to the stream
  streamController.add(1);
  await Future.delayed(Duration(seconds: 1));
  streamController.add(2);
  await Future.delayed(Duration(seconds: 1));
  streamController.add(3);

  // Close the StreamController when done to release resources
  streamController.close();
}
