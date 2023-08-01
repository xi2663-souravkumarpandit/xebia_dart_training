// Asynchronous function that simulates fetching data from a server
Future<List<String>> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating network delay
  return ['Data 1', 'Data 2', 'Data 3'];
}

void main() async {
  // Example using async/await
  print("Fetching data...");
  List<String> data = await fetchData();
  print("Data fetched: $data");
  print("Async/await example completed!");
}
