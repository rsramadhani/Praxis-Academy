import 'dart:io';

main() {
  int i = 0;
  bool ulang = true;

  do {
    stdout.write("Are the rose red?(y/n): ");
    String jawaban = stdin.readLineSync();

    i++;
    if (jawaban.toUpperCase() == "Y") ulang = false;
  } while(ulang);

  print("Looping is: $i x");

}