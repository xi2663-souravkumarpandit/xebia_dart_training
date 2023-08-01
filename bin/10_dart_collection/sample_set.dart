void main() {
  Set<String> countries = {'USA', 'Canada', 'India'};

  // Getting values (No specific order)
  for (var country in countries) {
    print('Country: $country');
  }

  // Setting values (Add new element)
  countries.add('Australia');
  print(
      'Updated countries: $countries'); // Output: Updated countries: {USA, Canada, India, Australia}
}
