void main(List<String> args) {
  // Integer Variable
  int age = 30;
  print("Age: $age"); // Output: Age: 30

  // Double Variable
  double height = 1.75;
  print("Height: $height"); // Output: Height: 1.75

  // String Variable
  String name = "John Doe";
  print("Name: $name"); // Output: Name: John Doe

  // Boolean Variable
  bool isStudent = true;
  print("Is student? $isStudent"); // Output: Is student? true

  // Dynamic Variable
  dynamic variable = 10;
  print("Variable: $variable"); // Output: Variable: 10

  variable = "Hello";
  print("Variable: $variable"); // Output: Variable: Hello

  // Late Variable
  late String fullName;
  fullName = 'name';
  print(fullName); // Output: null

  fullName = "Alice Smith";
  print(fullName); // Output: Alice Smith

  // Constant and Final
  const pi = 3.14; // Compile-time constant
  final cityName = "New York"; // Runtime constant (assigned once)

  print("Pi: $pi"); // Output: Pi: 3.14
  print("City Name: $cityName"); // Output: City Name: New York
}
