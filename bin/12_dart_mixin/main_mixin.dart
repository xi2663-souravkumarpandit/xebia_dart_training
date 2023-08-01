// Define a mixin named 'GreetMixin'
mixin GreetMixin {
  void greet() {
    print("Hello!");
  }
}

// Define a class 'Person' and use the 'GreetMixin' with it
class Person with GreetMixin {
  String name;

  Person(this.name);

  void introduce() {
    print("My name is $name.");
  }
}

// Define another class 'Animal' and use the 'GreetMixin' with it
class Animal with GreetMixin {
  String species;

  Animal(this.species);

  void makeSound() {
    print("The $species makes a sound.");
  }
}

void main() {
  var person = Person("Alice");
  person.greet(); // Output: Hello!
  person.introduce(); // Output: My name is Alice.

  var animal = Animal("Cat");
  animal.greet(); // Output: Hello!
  animal.makeSound(); // Output: The Cat makes a sound.
}
