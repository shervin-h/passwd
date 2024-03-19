import 'package:passwd/passwd.dart';

void main() {
  print(generatePassword()); // abhdhxmo

  print(
    generatePassword(
      length: 20,
      upperCase: true,
    ),
  ); // EKBRFDILDXRDLLKHKTMG

  print(
    generatePassword(
      length: 20,
      upperCase: true,
      lowerCase: true,
    ),
  ); // tsQWcXgeFtlajRYRYrUD

  print(
    generatePassword(
      length: 20,
      upperCase: true,
      lowerCase: true,
      digits: true,
    ),
  ); // eCrl6rQqcewzy2kbw7fZ

  print(
    generatePassword(
      length: 20,
      upperCase: true,
      lowerCase: true,
      digits: true,
      punctuation: true,
    ),
  ); //>1.)}|4wyW35xJxYRd"H
}
