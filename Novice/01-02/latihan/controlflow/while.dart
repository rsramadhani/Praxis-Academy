import 'dart:io';

main() {
  int i = 0;
  bool ulang = true;

  while(ulang){
    stdout.write("Are the violet blue (y/n): ");
    String jawaban = stdin.readLineSync();

    i++;
    if (jawaban.toUpperCase() == "Y") ulang = false;
  }

  print("Looping is: $i x");

}