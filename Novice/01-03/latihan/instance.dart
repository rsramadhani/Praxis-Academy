void main() { 
   var obj = new Rose(); 
   obj.cal_area(); 
}  
class Flower { 
   void cal_area() { 
      print("Rose are red"); 
   } 
}  
class Rose extends Flower {}