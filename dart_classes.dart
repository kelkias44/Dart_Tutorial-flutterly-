import 'dart:math';

class A{
  A({
    required this.a,
    required this.b
  });
  A.zero()
        : a = 0,
        b=0;
  A.fromJson({required Map<String, int> json})
        :a=json['a']!,
        b=json['b']!;
//redirecting constructors
A.zeroX({required int b}) : this(a:0,b:b);
A.zeroY({required int a}) : this(a:a,b:0);

  final int a;
  final int b; 

  @override
  String toString()=>'A(a:$a, b:$b)';

  // A(
  //   int p, int x, int b, int c,int d,int e,int f
  // ): _private = p,
  //    a=x,
  //    this.b=b,
  //    this.c=c,
  //    this.d=d,
  //    this.e=e,
  //    this.f=f;

  // int? _private;
  // int? a;
  // int b=1;
  //  final int c=2;

  //  late int d;
  //  late final int e;
  //  late final int f =5;

  //  static int g=6;
  //  static late int h;
  //  static late int i=8;
  //  static late final int j;

  //  static const int k=10;
}
  
void main(){
  var alfa = A(
    a:1,b:2
  );
  var alfaZero = A.zero();
  var alfaFromJson = A.fromJson(json:{'x':5,'y':10});
  var alfaZeroX = A.zeroX(b: 30);
  var alfaZeroY =A.zeroY(a: 30);

  print(alfa);
  print(alfaZero);
  print(alfaFromJson);
  

  Singleton s1 = Singleton();
  Singleton s2 = Singleton();

  print(identical(s1, s2));
//  print(alfa._private);
//  print(alfa.a);
//  print(alfa.b);
//  print(alfa.c); 
//  alfa.d=3;
//  print(alfa.d);
//  alfa.e=4;
//  print(alfa.e);
//  print(alfa.f);
//  print(A.g);
//  A.h=7;
//  print(A.h); 
//  print(A.i);
//  A.j=9;
//  print(A.j);
//  print(A.k);

var car = Car();
car.manufacturedYear = 2000;
print(car.age); 
}

// constant constructors

class Point{
  Point({
    required this.x, required this.y
  });
  //factory constructor
  factory Point.random({required bool isPositive}){
    int minNegativeValue = -99;
    int maxNegativeValue = -1;
    int minPositiveValue = 0;
    int maxPositiveValue = 99;
    int randomNegativeValue = minNegativeValue + 
       Random().nextInt(maxPositiveValue-minNegativeValue);
    int randomPositiveValue = minPositiveValue + 
       Random().nextInt(maxPositiveValue-minPositiveValue);
    return isPositive
          ?Point(x: randomPositiveValue, y:randomNegativeValue)
          :Point(x: randomNegativeValue, y: randomPositiveValue);
  }
  final int x;
  final int y; 
  // static const Point origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y:$y)';
}
//singleton constructor
class Singleton{
  Singleton._privateConstructor();
  static final Singleton _instance = Singleton._privateConstructor();
  factory Singleton()=>_instance;
}

class Car {
  late int age;
  set manufacturedYear(int value)=> age=2022-value;
}