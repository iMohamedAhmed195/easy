// Import the developer library to access the log function for logging messages.
import 'dart:developer';

// Import Flutter's foundation library to use kDebugMode, which is true only in debug mode.
import 'package:flutter/foundation.dart';

/// Logs a warning message in yellow text if the app is in debug mode.
void printWarning(Object obj) {
  //! Check if the app is in debug mode to avoid logging in production.
  if (kDebugMode) {
    //! Use ANSI escape code \x1B[33m for yellow text and \x1B[0m to reset color.
    log('\x1B[33m$obj\x1B[0m');
  }
}

/// Logs an error message in red text if the app is in debug mode.
void printError(Object obj) {
  if (kDebugMode) {
    //! \x1B[31m sets the text color to red, helpful for identifying errors.
    log('\x1B[31m$obj\x1B[0m');
  }
}

/// Logs an informational message in blue text if the app is in debug mode.
void printInfo(Object obj) {
  if (kDebugMode) {
    //! \x1B[34m sets the text color to blue for general information.
    log('\x1B[34m$obj\x1B[0m');
  }
}

/// Logs a success or completion message in green text if the app is in debug mode.
void printDone(Object obj) {
  if (kDebugMode) {
    //! \x1B[32m sets the text color to green, often used for successful completions.
    log('\x1B[32m$obj\x1B[0m');
  }
}
