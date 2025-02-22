# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart:  inadequate exception handling within asynchronous functions using `async` and `await`. The `bug.dart` file showcases the problem, while `bugSolution.dart` provides an improved solution.

## Problem

The original code uses a `try-catch` block to handle potential exceptions during an HTTP request.  However, simply re-throwing the exception without proper context or logging can make debugging difficult.  Silent failures are likely if the exception isn't caught and handled effectively higher up the call stack. 

## Solution

The improved code in `bugSolution.dart` provides more robust error handling: specific error types are caught, relevant information is logged, and a more informative error message is returned to the calling function, aiding debugging and user experience.

## How to Run

1. Clone this repository.
2. Run `dart bug.dart` to see the original problematic code in action (you will likely see a less than ideal error message).
3. Run `dart bugSolution.dart` to see how to improve error handling, providing better context and information.