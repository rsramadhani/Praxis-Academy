import 'dart:io';

main(){
  stdout.write("Password: ");
  String password = stdin.readLineSync().trim();

  // Mencocokkan password yang di masukkan
  if(password == "rose"){
    print("Rose are red, you're beautiful like a rose");
  } else {
    print("corpse flower is you");
  }
}