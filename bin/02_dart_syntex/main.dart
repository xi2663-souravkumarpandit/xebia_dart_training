void main(List<String> args) {
  // 1. Variables and Data Types:
  // Integer variable
  int age = 30;

  // Double variable
  double height = 1.75;

  // String variable
  String name = "John Doe";

  // Boolean variable
  bool isStudent = true;

  // Printing variables
  print("Name: $name, Age: $age");
  print("Height: $height");
  print("Is student? $isStudent");

  //2. Conditional Statements:

  int marks = 85;

  if (marks >= 90) {
    print("Grade A");
  } else if (marks >= 80) {
    print("Grade B");
  } else if (marks >= 70) {
    print("Grade C");
  } else {
    print("Grade D");
  }

  // 3. Loops:

  // For loop
  for (int i = 1; i <= 5; i++) {
    print("Value: $i");
  }

  // While loop
  int count = 0;
  while (count < 5) {
    print("Count: $count");
    count++;
  }

  // Do-while loop
  int num = 1;
  do {
    print("Number: $num");
    num++;
  } while (num <= 5);

//4. Functions:
// Function with parameters and return value
  int addNumbers(int a, int b) {
    return a + b;
  }

  // Function call
  int result = addNumbers(5, 7);
  print("Result: $result");

// 5. Lists and Loops:

  // List of integers
  List<int> numbers = [1, 2, 3, 4, 5];

  // Using for-in loop to iterate through the list
  for (int number in numbers) {
    print("Number: $number");
  }

  // Using forEach loop to iterate through the list
  for (var number in numbers) {
    print("Number: $number");
  }
// 6. Maps:
  // Map of country codes and their names
  Map<String, String> countries = {
    "USA": "United States of America",
    "IN": "India",
    "UK": "United Kingdom",
  };

  // Accessing values in the map
  print("Country name for USA: ${countries["USA"]}");
  print("Country name for IN: ${countries["IN"]}");

  // 7. Classes and Objects:
  // Creating objects
  Person person1 = Person("Alice", 25);
  Person person2 = Person("Bob", 30);

  // Calling methods on objects
  person1.sayHello();
  person2.sayHello();
}

class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void sayHello() {
    print("Hello, my name is $name and I am $age years old.");
  }
}
