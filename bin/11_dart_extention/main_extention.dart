// Define an extension on the int class
extension IntUtils on int {
  // Extension method to check if the number is even
  bool get isEvenNumber {
    return this % 2 == 0;
  }

  // Extension method to find the square of the number
  int squared() {
    return this * this;
  }
}

void main() {
  int number = 5;

  // Using the extension method to check if the number is even
  print('$number is even? ${number.isEvenNumber}'); // Output: 5 is even? false

  // Using the extension method to find the square of the number
  int square = number.squared();
  print('Square of $number is $square'); // Output: Square of 5 is 25
}
