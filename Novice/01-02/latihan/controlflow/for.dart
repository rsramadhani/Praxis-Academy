import 'dart:io';

main(){
  stdout.write("the number of roses you want is : ");
  int n = int.parse(stdin.readLineSync());

  for(int i = 1; i <= n; i++){
    print("Rose $i");
  }
}