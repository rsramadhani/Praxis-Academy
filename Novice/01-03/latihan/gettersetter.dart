main(List<String> args) {
  Flower d = new Flower('Rose', 5);
  d.respectedName = 'My Rose';
  print(d.respectedName);
}
 
class Flower {
  String name;
  int age;
 
  Flower(this.name, this.age);
 
  String get respectedName {
    return '$name are red';
  }
 
  set respectedName(String newName) {
    name = newName;
  }
 
  Flower.newPlant() {
    name = 'Oci';
    age = 0;
  }
}