
void main(){
  var a = A(1);
  var b = B(3);

  //? a.+b
  print(a+b);

  //?b.+a
  print(b+a);
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
