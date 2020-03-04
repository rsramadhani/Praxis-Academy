void main() { 
   var obj = new Rose(); 
   obj.str = "Rose are red, Violet are blue"; 
   print(obj.str); 
}  
class Root { 
   String str; 
}  
class Flower extends Root {}  
class Rose extends Flower {}  