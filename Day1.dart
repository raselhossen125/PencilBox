import 'dart:io';

void main() {
  stdout.write("Enter your strong password: ");
  String password = stdin.readLineSync()!;
  print(cheak(password));
}

cheak(String value) {
  if (value.length >= 8 &&
      value.contains(RegExp('[0-9]')) &&
      value.contains(RegExp('[A-Z]')) &&
      value.contains(RegExp('[a-z]')) &&
      value.contains(RegExp('[!,@,#,%,^,&,*,(,),]'))) {
    return 'Your password is Valid';
  } else {
    return 'Your password is Invalid';
  }
}
