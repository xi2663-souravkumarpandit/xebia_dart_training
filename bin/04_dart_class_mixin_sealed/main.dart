// Define a mixin named 'GreetMixin'
mixin GreetMixin {
  void greet() {
    print("Hello!");
  }
}

// Define a class 'Person' that uses the 'GreetMixin'
class Person with GreetMixin {
  String name;

  Person(this.name);
}

// Define another class 'Robot' that uses the 'GreetMixin'
class Robot with GreetMixin {
  String model;

  Robot(this.model);
}

void main1() {
  // Creating instances of 'Person' and 'Robot' classes
  var person = Person("John");
  var robot = Robot("R2D2");

  // Using the 'greet' method from the 'GreetMixin' in both classes
  person.greet(); // Output: Hello!
  robot.greet(); // Output: Hello!
}

// Define a sealed superclass 'Shape'
abstract class Shape {}

// Define subclasses of 'Shape'
class Circle extends Shape {
  double radius;

  Circle(this.radius);
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);
}

void main2() {
  // Using a switch statement with sealed classes
  Shape shape = Circle(5.0);

  switch (shape.runtimeType) {
    case Circle:
      Circle circle = shape as Circle;
      print("Circle: Radius = ${circle.radius}");
      break;
    case Rectangle:
      Rectangle rectangle = shape as Rectangle;
      print(
          "Rectangle: Width = ${rectangle.width}, Height = ${rectangle.height}");
      break;
    default:
      print("Unknown shape");
  }
}

// Define an extension named 'StringExtensions' for the 'String' class
extension StringExtensions on String {
  // Extension method to capitalize the first letter of a string
  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}

void main3() {
  String name = "john doe";

  // Using the 'capitalizeFirstLetter' extension method
  String capitalized = name.capitalizeFirstLetter();
  print(capitalized); // Output: "John doe"
}
