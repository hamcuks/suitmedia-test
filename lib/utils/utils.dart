import 'dart:developer';

extension TextSupport on String {
  bool get isPalindrome {
    // remove all spaces in text. Spaces will affect the proccess of text validation
    String removedSpace = replaceAll(' ', '');

    // split the removed space text into array, then reverse and join the array
    String reversed = removedSpace.split('').reversed.toList().join();

    // check the reversed string
    return reversed == removedSpace;
  }

  bool get isPalindromeManual {
    // remove all spaces in text. Spaces will affect the proccess of text validation
    String removedSpace = '';
    for (int i = 0; i < length; i++) {
      removedSpace += this[i];
    }

    String reversed = '';
    // decrement looping. Assign text into reversed variable using the index
    for (int i = removedSpace.length - 1; i >= 0; i--) {
      reversed += removedSpace[i];
    }

    return reversed == removedSpace;
  }
}
