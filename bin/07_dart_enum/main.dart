// Define an enum named 'Day' with constant values representing days of the week
enum Day {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

void main() {
  // Using enums in variables
  Day today = Day.Wednesday;
  print("Today is $today"); // Output: Today is Day.Wednesday
  // Switch statement with enums
  switch (today) {
    case Day.Monday:
    case Day.Tuesday:
    case Day.Wednesday:
    case Day.Thursday:
    case Day.Friday:
      print("It's a weekday");
      break;
    case Day.Saturday:
    case Day.Sunday:
      print("It's a weekend");
      break;
  }

  // Enum iteration using values property
  for (var day in Day.values) {
    print(day);
  }
  // Output:
  // Day.Monday
  // Day.Tuesday
  // Day.Wednesday
  // Day.Thursday
  // Day.Friday
  // Day.Saturday
  // Day.Sunday
}
