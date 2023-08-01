import 'dart:io';

void main() {
  // Define the file path
  var filePath = 'example.txt';

  // Read data from the file
  File(filePath).readAsString().then((data) {
    print('Data read from file:');
    print(data);
  }).catchError((error) {
    print('Error reading file: $error');
  });
}
