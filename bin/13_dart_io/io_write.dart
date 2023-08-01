import 'dart:io';

void main() {
  // Define the file path
  var filePath = 'example.txt';

  // Data to be written to the file
  var data = 'Hello, Dart I/O!\n';

  // Write data to the file
  File(filePath).writeAsString(data).then((_) {
    print('Data written to file successfully.');
  }).catchError((error) {
    print('Error writing file: $error');
  });
}
