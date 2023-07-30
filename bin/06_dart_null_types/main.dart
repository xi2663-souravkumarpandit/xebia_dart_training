/// 1. Nullable and Non-Nullable Types:
///
/// By default, variables cannot contain null values (non-nullable).
/// To allow null values explicitly, use the nullable type indicated by ?.
/// 2. Late Variables:
///
/// Late variables are non-nullable variables that can be initialized later, even after their declaration.
/// Use the late keyword with non-nullable types.
/// 3. Null-aware Operators:
///
/// Dart provides null-aware operators to handle null values gracefully.
/// The ?? operator returns the right-hand side value if the left-hand side is null.
/// The ?. operator allows you to safely access properties/methods of a potentially null object.
/// 4. Null Checking:
///
/// The ! operator asserts that a nullable variable is not null (use with caution).
/// The ?. operator can be chained for nested null checks.
/// 5. Null Safety in Functions:
///
/// Function parameters can be made nullable by using the Type? paramName.
/// To specify a non-nullable return type, use Type or Type!.
/// 6. Collection Literals:
///
/// Null-aware spread operator ...? allows copying elements from a nullable list to a non-nullable list.
/// Null-aware conditional operator ifNull() specifies the value when a collection is null.
/// 7. Late Initialization:
///
/// Late initialization using late keyword allows deferring the initialization of non-nullable variables.
/// 8. Required Null Safety:
///
/// When using packages or code that requires null safety, you must opt into null safety in your project.
/// Update your pubspec.yaml file: environment: sdk: ">=2.12.0 <3.0.0"

void main() {
  String? nullableName = "John"; // Nullable variable
  String nonNullableName = "Alice"; // Non-nullable variable

  // Null-aware operators
  String name =
      nullableName ?? "Unknown"; // Use "Unknown" if nullableName is null
  int? length = nullableName.length; // Get length if nullableName is not null

  // Null checking
  if (nullableName != null) {
    print("Name: $nullableName");
  } else {
    print("Name not available");
  }

  // Late variables
  late String lateName;
  lateName = "Bob"; // Late initialization

  // Late variables with null safety
  late String? lateNullableName;
  lateNullableName = "Jake"; // Late initialization

  // Function with nullable parameters and return type
  void greet(String? name) {
    print("Hello, ${name ?? 'Guest'}!");
  }

  // Calling the function
  greet(nullableName); // Output: Hello, John!
  greet(nonNullableName); // Output: Hello, Alice!
  greet(null); // Output: Hello, Guest!
}
