import 'dart:math';

void main(){
  // print(sqrt(4));
  // print(15*10);
  // print(20+5);
  // Future.delayed(const Duration(seconds: 5),
  //     () => print(4*3));
  // print(20-5);

  print("A");
  Future((){
    print("B");
    Future(()=>print("C"));
    Future.microtask(()=>print("D"));
    Future(()=>print("E"));
    print("F");
 });
 print("G");
  
}