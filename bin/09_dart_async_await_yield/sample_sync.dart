void main() {
  print('create iterator');
  Iterable<int> numbers = getNumbers(3);
  print('starting to iterate...');
  for (int val in numbers) {
    print('$val');
  }
  print('end of main');
}

Iterable<int> getNumbers(int number) sync* {
  print('generator started');
  for (int i = 0; i < number; i++) {
    yield i;
  }
  print('generator ended');
}
