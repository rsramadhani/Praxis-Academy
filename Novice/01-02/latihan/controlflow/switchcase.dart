import 'dart:io';

void main() {
  int choices;
  String tmp;

  print("Choose one number from 1-5 to see your flower  : ");
  tmp = stdin.readLineSync();
  choices = int.parse(tmp);

  switch(choices) {
    case 1:
       print("Rose");
       break;
    case 2:
       print("Jasmine");
       break;
    case 3:
       print("Tulip");
       break;
    case 4:
       print("Cherry Blossom");
       break;
     case 5:
       print("Sunflower");
       break;
    default:
       print("Just have (5) choicess");
  }
}