import 'dart:io';

main(){
  print("apakah aku cantiqqque?");
  stdout.write("jawab (y/t): ");
  String jawab = stdin.readLineSync();

  // menggunakan operator ternary sebagai ganti if/esle
  var hasil = (jawab == 'y') ? "kamu cantiqueeeee" : "kamu kurang cantiquueeee";

  print("Kamu $hasil luar dan dalam");
}