class Flower{
    String name;
    String color;

    Flower(this.name, this.color);

    getInfo(){
        return "Name: " + name + ", color: " + color;
    }
}

void main(){
    Flower flower = new Flower("Rose","red");
    print(flower.name);
    print(flower.color);

    print(flower.getInfo());
}