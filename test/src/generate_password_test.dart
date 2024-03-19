import 'package:passwd/passwd.dart';
import 'package:test/test.dart';

void main() {
  group(
    '',
    () {
      test(
        'Checking that the generated password is 8 characters from lowercase letters',
        () {
          // arrange
          final regex = RegExp("[a-zA-Z]{8}");

          // act
          final result = generatePassword();

          // assert
          expect(result.length, 8);
          expect(regex.hasMatch(result), true);
        },
      );

      test(
        'Checking that the generated password is 8 characters from uppercase letters',
        () {
          // arrange
          final regex = RegExp("[A-Z]{8}");

          // act
          final result = generatePassword(upperCase: true);

          // assert
          expect(result.length, 8);
          expect(regex.hasMatch(result), true);
        },
      );

      test(
        'Checking that the generated password is 8 characters from digit characters',
        () {
          // arrange
          final numberRegex = RegExp(r"^\d+$");

          // act
          final result = generatePassword(digits: true);

          // assert
          expect(result.length, 8);
          expect(numberRegex.hasMatch(result), true);
        },
      );

      test(
        'Checking that the generated password is 8 characters from punctuation characters',
        () {
          // arrange
          final regex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]');

          // act
          final result = generatePassword(punctuation: true);

          // assert
          expect(result.length, 8);
          expect(regex.hasMatch(result), true);
        },
      );

      test(
        'Checking that the generated password is 12 characters from digit and punctuation characters',
        () {
          // arrange
          final regex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-0-9]');

          // act
          final result = generatePassword(
            length: 12,
            digits: true,
            punctuation: true,
          );

          // assert
          expect(result.length, 12);
          expect(regex.hasMatch(result), true);
        },
      );

      test(
        'Checking that the generated password is 20 characters from digit and punctuation characters',
         () {
          // arrange
          final regex = RegExp(r'[a-zA-Z]');

          // act
          final result = generatePassword(
            length: 20,
            lowerCase: true,
            upperCase: true,
          );

          // assert
          expect(result.length, 20);
          expect(regex.hasMatch(result), true);
        },
      );
    },
  );
}
