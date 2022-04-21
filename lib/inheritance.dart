import 'dart:html';

class Animal{
  final String name;

  Animal({required this.name});

  void whatAmI()=>print('I am an animal');
  void chase(Animal a){}
}
class Mouse extends Animal{
  Mouse():super(name: 'jerry');
}
class Cat extends Animal{
  Cat(String name):super(name:name);

  @override
  void chase(covariant Mouse m){}
}
class BlackCats extends Cat{
  BlackCats(String name):super(name);

  @override
  void whatAmI()=> print('I am a duck');
}

void main(){
  BlackCats black =BlackCats('Tom');
  black.whatAmI();

}