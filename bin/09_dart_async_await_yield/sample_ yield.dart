// Asynchronous generator function that yields data one by one
Stream<String> fetchStreamData() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(
        Duration(seconds: 1)); // Simulating data retrieval delay
    yield 'Stream Data $i';
  }
}

void main() async {
  // Example using yield and Stream
  print("Fetching data from Stream...");
  await for (String streamData in fetchStreamData()) {
    print("Received: $streamData");
  }
  print("Stream example completed!");
}
