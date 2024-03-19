![Screenshots](https://github.com/shervin-h/passwd/blob/main/assets/passwd.jpg)

# Password Generator

By using `passwd` package, you can generate a strong password that includes a wide set of characters,
such as upper and lowercase characters, numbers, special characters or punctuation.

🔑 🗝️ 🔐

## Install Package
add the following line to your `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  passwd: ^1.0.0
```

then run:

```
dart pub get
```

or

```
flutter pub get
```

## Getting started

first import
```dart
import 'package:passwd/passwd.dart';
```

## Usage

now in your dart code, you can use:

```dart
print(generatePassword()); // TNCrPnot

print(
  generatePassword(
    length: 20,
    upperCase: true,
  ),
); // VIMTANUPYBTMPICFESYL

print(
  generatePassword(
    length: 20,
    upperCase: true,
    lowerCase: true,
  ),
); // TdClmuvLBQwcMHkUKxHl

print(
  generatePassword(
    length: 20,
    upperCase: true,
    lowerCase: true,
    digits: true,
  ),
); // zp3AzPXvw6h35ZaEgPl1

print(
  generatePassword(
    length: 40,
    upperCase: true,
    lowerCase: true,
    digits: true,
    punctuation: true,
  ),
); // Y#%_8f^ZJ6>IZGv]SmZBqun3"e6k$5ia>IaeKikx
```

### by Shervin Hassanzadeh

- shervin.hz07@gmail.com
- [linked in](https://www.linkedin.com/in/shervin-hassanzadeh)
