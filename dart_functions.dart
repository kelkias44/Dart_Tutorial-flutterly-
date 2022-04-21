void main(){
  var functionObject = first;
  second(functionObject,5);

//anonymous function

var list = ['hello', 'everyone', 'kila']
              .map((String s) => s.toUpperCase()
              )
              .toList();
        print(list);

  //parameters

  //  required positional parameters mandatory, order matters
  requiredPositional(2, 3);
  //optional, order matters
  optionalPositional(null,3);
  //mandatory, order doesn't matter 
  requiredNamed(b: 2, a: 3);
  //optional, order doesn't matter
  optionalNamed(b: 3, a: 4);
  namedHybrid(a: 20);

  //lexical closure
  var car = makeCar('BMW');
  print(car('M5'));

  
  
 }

//parameters
 void requiredPositional(int a, int b){}
 void optionalPositional([int? a, int? b]){}
 void requiredNamed({required int a,required int b}){}
 void optionalNamed({int a=5, int b=4}){}
 void namedHybrid({required int a, int b=10}){}
 void mixOfparam(int a, int b, [int c=5]){}   


void second(int Function(int) f, int a){
  // print(f.call(a));
  // print(f(a));

  //callable classes

  // var a = A();
  // a();
  A()();
}
int first(int a) => a.isOdd? 1 : 0;


//lexical closure

String Function(String) makeCar(String make){ 
  var engine = '4.4 V8';
  return (model) => '$make $model $engine';
}


//callable classes
class A{
  void call(){print('I\'m called');}
}


