class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print('Animal speaks');
  }

  void eat() {
    print('Animal eats');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void speak() {
    print('Dog barks');
  }

  void fetch() {
    print('Dog fetches the ball');
  }
}

class Cat extends Animal {
  String color;

  Cat(String name, this.color) : super(name);

  @override
  void speak() {
    print('Cat meows');
  }

  void scratch() {
    print('Cat scratches');
  }
}

void main() {
  // Using Default Constructor
  Animal animal = Animal('Generic Animal');
  animal.speak(); // Output: Animal speaks
  animal.eat(); // Output: Animal eats

  // Using Named Constructor
  Dog dog = Dog('Buddy', 'Labrador');
  dog.speak(); // Output: Dog barks
  dog.eat(); // Output: Animal eats (inherited method)
  dog.fetch(); // Output: Dog fetches the ball

  Cat cat = Cat('Whiskers', 'Orange');
  cat.speak(); // Output: Cat meows
  cat.eat(); // Output: Animal eats (inherited method)
  cat.scratch(); // Output: Cat scratches
}
