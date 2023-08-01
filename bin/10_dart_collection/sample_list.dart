void main() {
  List<String> fruits = ['Apple', 'Banana', 'Orange'];

  // Getting values
  String firstFruit = fruits[0];
  String secondFruit = fruits.elementAt(1);

  print('First fruit: $firstFruit'); // Output: First fruit: Apple
  print('Second fruit: $secondFruit'); // Output: Second fruit: Banana

  // Setting values
  fruits[0] = 'Mango';
  fruits[2] = 'Grapes';

  print(
      'Updated fruits: $fruits'); // Output: Updated fruits: [Mango, Banana, Grapes]
}
