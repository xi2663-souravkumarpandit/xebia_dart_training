void main() {
  Map<String, int> scores = {
    'John': 90,
    'Alice': 95,
    'Bob': 85,
  };

  // Getting values using keys
  int? johnScore = scores['John'];
  int? aliceScore = scores['Alice'];

  print('John\'s score: $johnScore'); // Output: John's score: 90
  print('Alice\'s score: $aliceScore'); // Output: Alice's score: 95

  // Setting values
  scores['Bob'] = 88;
  scores['Eve'] = 91;

  print(
      'Updated scores: $scores'); // Output: Updated scores: {John: 90, Alice: 95, Bob: 88, Eve: 91}
}
