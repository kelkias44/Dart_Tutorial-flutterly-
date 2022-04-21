import 'dart:math';

void main(){
  // final a = showNormal(10);
  final a = showGenerator(10);
  print(a.last);
  // print(sqrt(4));
  // print(15*10);
  // print(20+5);
  // Future.delayed(const Duration(seconds: 5),
  //     () => print(4*3));
  // print(20-5);
  
//   // microtask
//   print("A"); 
//   Future((){
//     print("B");
//     Future(()=>print("C"));
//     Future.microtask(()=>print("D"));
//     Future(()=>print("E"));
//     print("F");
//  });
//  print("G");




}
  List<int> showNormal(int m){
  print('normal started');
  final list =<int>[];
  for(int i=0; i<=m;i++){
    print('i-->$i');
    list.add(i);      
  }
  print('normal ended'); 
  return list; 
} 

Iterable<int> showNegativeGenerator(int n)sync*{
  print('negative generator started');
  for(int i=0;i<=n;i++){
    print('i-->${-i}');
    yield i;
  }

  print('negative generator ended');
}

Iterable<int> showGenerator(int n)sync*{
  print('generator started');
  for(int i=0;i<=n;i++){
    print('i-->$i');
    yield i;
  }
  yield* showNegativeGenerator(n);

  print('generator ended');
}