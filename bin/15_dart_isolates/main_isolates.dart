import 'dart:isolate';

void isolateFunction(SendPort sendPort) {
  sendPort.send('Isolate message');
}

void main() {
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn(isolateFunction, receivePort.sendPort);

  receivePort.listen((message) {
    print('Received: $message'); // Output: Received: Isolate message
  });
}
