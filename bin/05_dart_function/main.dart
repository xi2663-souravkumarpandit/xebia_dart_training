// 1. Named Parameters:
// Named parameters in Dart allow you to pass arguments to functions or constructors by specifying the parameter names. This provides more clarity and flexibility when calling functions, as the order of the arguments doesn't matter.

// Example:

// void greet({String name, int age}) {
//   print("Hello, $name! You are $age years old.");
// }

// void main() {
//   greet(name: "Alice", age: 25); // Output: Hello, Alice! You are 25 years old.
//   greet(age: 30, name: "Bob"); // Output: Hello, Bob! You are 30 years old.
// }
// 2. Positional Parameters:
// Positional parameters are traditional function or constructor parameters that are identified by their position. The order in which the arguments are passed must match the order of the parameters.

// Example:

// void greet(String name, int age) {
//   print("Hello, $name! You are $age years old.");
//}

// void main() {
  // greet("Alice", 25); // Output: Hello, Alice! You are 25 years old.
  // greet("Bob", 30); // Output: Hello, Bob! You are 30 years old.
// }
// 3. Factory Constructors and Factory Methods:
// In Dart, factory is a keyword used to create factory constructors or factory methods. A factory constructor is used to return an instance of a class from a method, allowing more control over the object creation process.

// Example of Factory Constructor:

// class MyClass {
//   String name;

//   // Factory constructor
//   factory MyClass(String name) {
//     return MyClass._privateConstructor(name);
//   }

//   // Private named constructor
//   MyClass._privateConstructor(this.name);
// }

// void main() {
//   var instance = MyClass("John");
//   print(instance.name); // Output: John
// }
// // Example of Factory Method:

// class MyClass {
//   String name;

//   MyClass._privateConstructor(this.name);

//   // Factory method
//   factory MyClass.createInstance(String name) {
//     // Additional logic or computation before returning an instance
//     return MyClass._privateConstructor(name);
//   }
// }

// void main() {
//   var instance = MyClass.createInstance("Alice");
//   print(instance.name); // Output: Alice
// }
