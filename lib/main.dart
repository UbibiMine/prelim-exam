import 'dart:io';

import 'package:mobile_dev/global_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'global_provider.dart';

void main() {
  final container = ProviderContainer();
  final taskService = container.read(addtaskProvider);
  while (true) {
    print('\n Task Holder');
    print('1. Add a Task');
    print('2. View all tasks');
    print('3. Exit');
    print('Enter your choice:');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter Label:');
        String? label = stdin.readLineSync();
        print('Enter task:');
        String? task = stdin.readLineSync();
        if (label != null && task != null && label.isNotEmpty) {
          taskService.addtaskToDo(label, task);
        } else {
          print('Invalid label input. Please try again.');
        }
        break;
      case '2':
        taskService.viewTask();
        break;
      case '3':
        print('Exiting the application...');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}
