// top-level variables can be accessed from everywhere
int t= 5;

class A{
  //static variable
  static int a=3;
  static int? nonnullable;
  //instance variable(fiels/properties of class)
  double i = 5.5;
  double? nullableInstance;
  A({
    required this.i
  }):nullableInstance = 30;

}

void randomFunction(){
  //local variable
  var f= 7;

  int? nullableLocal;
  nullableLocal = 25;
  int nonNullableLocal;

  nonNullableLocal = 5;

  // print(nullableLocal.isEven);
  print(nonNullableLocal.isEven);
}

void main() {
  typeCheck();


  A.nonnullable = 40;
  t = 8;
  
  print(t);
  print(A.a);

  var alfa = A(i: 10)..nullableInstance=20;
  print(alfa.nullableInstance);

  randomFunction();

  var weatherStation = WeatherStation();

  print(weatherStation.temprature);
}

class WeatherStation{
  late int temprature = readTemprature();
  int readTemprature() => 25;
}

//var vs dynamic

void typeCheck(){
  var vi = 5;// int vi = 5;
  var vs = 'name';//Srting vs = 'name;
  var vl = [1,2,3];//List<int> vl = [1,2,3];
  
  print('var runtime type:\n');
  print(vi.runtimeType);
  print(vs.runtimeType);
  print(vl.runtimeType);

  dynamic di = 5;
  dynamic ds = 'name';
  dynamic dl = [1,2,3];
  
  print('dynamic runtime type:\n');
  print(di.runtimeType);
  print(ds.runtimeType);
  print(dl.runtimeType);
}



