class Performer{
  void perform() => print('Performs!');
}
mixin Guitarist on Performer{
  void playGuitar()=> print('Playing the guitar');
  void test() => super.perform();
}

mixin Drummer{
  void playDrum()=> print('Playing the drum');
  void perform() => playDrum();
}
class Musician extends Performer with Guitarist,Drummer{

}
void main(){
  Musician musician = Musician();
  musician.test();

  1.luckyInt;
  print(1.luckyInt);

  10.add15();
  print(10.add15());
}
//the order in which you write mixins after the with key word matters


//Extension classes:- to add functionality to existing classes/libraries

extension IntegerExtension on int{
  int get luckyInt => 12;
  int add15()=> this+15;
}
