
main(List<String> args) {
  Flower.bark(); 
}
 
class Flower {
  String name;
  int age;
 
  Flower(this.name, this.age);
 
  static bark() {
    print('Rose are red');
  }
}