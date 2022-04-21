
import 'package:equatable/equatable.dart';

void main(){
  var a = A(1);
  var b = B(3);
  //? a.+b
  // print(a+b);
  //?b.+a
  // print(b+a);
  int c=7;
  int d=2;

  var e = c/d;
  print(e);

  var i = c~/d;
  var r = c%d;
  print('7/2=$i r $r');

  //!a1=a,then a=a+1
  var a1 = c++;
  //!a= a+1, then a2=a
  var a2 = ++c;
  //the same for -- operator

  //Equality and relational operators

  var a11 = G(1,2);
  var a22 = G(1,2);

  print('a==a2:${a1==a2}');
  print('identical(a1,a2): ${identical(a1, a2)}');

  //type test operators
  var list = [1,2.0,'test',null]..forEach((element) {
    if(element is int)print('int');
    else if(element is double)print('double');
    else if(element is String)print('string');
    else if(element == null)print('null');
  });


  //assignment operator
  int z=1;

  var z1 = z+=3;
  var z2 = z-=3;
  var z3 = z~/=3;
  var z4 = z*=3;

  //bit operator

  int v =6;
  int u = 5;

  print(v&u);
  print(v|u);
  print(v^u);
  print(v<<1);
  print(v>>1);

  //conditional expressions
  Car rewardCar(Car? dreamCar)=> dreamCar ?? Car('Random');

  
}
class Car{
  final String name;
  Car(this.name);
}




class X{
  final int value;
  X(this.value);
}

class A extends X {
  A(int value):super(value);
  String operator + (X other) => 'A() += ${value + other.value}';
}
class B extends X{
  B(int value):super(value);
  String operator + (X other) => 'B() += ${value + other.value}';
}

class G extends Equatable {
  final int a;
  final int b;
  G(this.a, this.b);

  @override
  // TODO: implement props
  List<Object?> get props => [a,b]; 

} 
