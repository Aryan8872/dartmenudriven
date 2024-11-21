import 'dart:io';

void main() {
  while (true) {
    print('===================MENU DRIVEN==================');
    print('1. Add');
    print('2. Subtract');
    print('3. Multiply');
    stdout.write('Enter your choice (1-3): ');
    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    if (choice == null || choice < 1 || choice > 3) {
      print('Invalid choice! Please select a valid option.');
      continue;
    }

    stdout.write('Enter the first number: ');
    double? num1 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Enter the second number: ');
    double? num2 = double.tryParse(stdin.readLineSync() ?? '');

    if (num1 == null || num2 == null) {
      print('Invalid input! Please enter valid numbers.');
      continue;
    }

    switch (choice) {
      case 1:
        print('Result: ${num1 + num2}');
        break;
      case 2:
        print('Result: ${num1 - num2}');
        break;
      case 3:
        print('Result: ${num1 * num2}');
        break;
    }

    stdout.write('Do you want to continue (Y/N): ');
    String? continueChoice = stdin.readLineSync()?.toUpperCase();

    if (continueChoice != 'Y') {
      print('Exiting the program. Goodbye!');
      break;
    }
  }
}
