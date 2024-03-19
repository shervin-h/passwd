import 'dart:math';

const asciiUpperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const asciiLowerCase = 'abcdefghijklmnopqrstuvwxyz';
const digitChars = '0123456789';
const punctuationChars = '!"#\$%&\'()*+,-./:;<=>?@[\\]^_`{|}~';

/// ## [generatePassword] Function Documentation
///
/// The `generatePassword` function generates a random password based on specified criteria.
///
/// Parameters:
///
/// - `length` (optional): The length of the generated password. Default is 8.
/// - `upperCase` (optional): Whether to include uppercase letters in the password. Default is false.
/// - `lowerCase` (optional): Whether to include lowercase letters in the password. Default is false.
/// - `digits` (optional): Whether to include digits in the password. Default is false.
/// - `punctuation` (optional): Whether to include punctuation characters in the password. Default is false.
///
/// Returns:
///
/// A string representing the generated password.
///
/// Throws:
///
/// Throws an assertion error if the specified length is less than 4.
///
/// Usage Example:
///
/// ```dart
/// final password = generatePassword(
///   length: 12,
///   upperCase: true,
///   lowerCase: true,
///   digits: true,
///   punctuation: false,
/// );
/// print('Generated Password: $password');
/// ```
///
/// Notes:
///
/// - This function allows customization of the password by specifying the desired length
///   and character types to include.
/// - If no character types are specified, the function defaults to using lowercase and uppercase letters.
String generatePassword({
  int length = 8,
  bool upperCase = false,
  bool lowerCase = false,
  bool digits = false,
  bool punctuation = false,
}) {
  String pool = '';

  if (upperCase) {
    pool += asciiUpperCase;
  }

  if (lowerCase) {
    pool += asciiLowerCase;
  }

  if (digits) {
    pool += digitChars;
  }

  if (punctuation) {
    pool += punctuationChars;
  }

  if (length < 4) {
    assert(length >= 4,
        'length of generated password must be equal or grater than 4');
  }

  if (pool.isEmpty) {
    pool = '$asciiLowerCase$asciiUpperCase';
  }

  String passwd = '';
  final random = Random();
  for (int i = 0; i < length; i++) {
    passwd += pool[random.nextInt(pool.length - 1)];
  }

  return passwd;
}
