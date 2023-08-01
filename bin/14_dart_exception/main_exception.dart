void divideNumbers(int a, int b) {
  if (b == 0) {
    throw Exception('Division by zero is not allowed.');
  }
  print(a ~/ b); // Normal division using ~/ operator
}

void main() {
  try {
    divideNumbers(10, 0);
  } catch (e) {
    print('Caught exception: $e');
  }

  try {
    var result = int.parse('123abc');
    print('Parsed value: $result');
  } catch (e) {
    print('Error: $e');
  }
  try {
    var value = 10 ~/ 0;
    print('Result: $value');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Finally block executed.');
  }
}
