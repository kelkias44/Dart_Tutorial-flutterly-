void main() {
  Object? obj = 'pre null safe dart';
  driveTwoSeatedcar('WCKD','kelkias');
  showString(obj as String);
  print(multipleRetuns());
  print(mustReturnString());
}

void driveTwoSeatedcar(String driver,[String? passenger]){
  if(passenger != null){
    print('$driver cruises with $passenger today' );
  }else{
    print('$driver cruise alone today');
  }
}

void showString(String s){
  print(s.toUpperCase());
}

void doesNotReturnAnyThing(){}

String mustReturnString(){
  return 'Must return String in null safety';
}

String multipleRetuns(){
  if('Test'=='Test')
  return 'true';
  else if('Test' =='Not Test')
  return 'false';
  else if('Test'!='whatever')
  return "whatever";
  else{
    throw ArgumentError();//throw never
    // return 'well it\'s done!';
  }
}