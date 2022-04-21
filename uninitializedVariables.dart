int a=5;

class A{
  static int b=10;
}

int? nullable;


void main(){
  // print(a);

  // print(A.b);

  // print(nullable);

  // var car = Car();
  // car.accelerate();
  // car.Steer();

  // var w = Weather();

  // print(w.temprature + 25);

  // mandatory, order matters
  positionalMandatory(2, 3);
  //optional, order matters
  positionalOptional(null,3);
  //mandatory, order doesn't matter
  namedMandatory(b: 2, a: 3);
  //optional, order doesn't matter
  namedOptional(b: 3, a: 4);

  
 }

 void positionalMandatory(int a, int b){}
 void positionalOptional([int? a, int? b]){}
 void namedMandatory({required int a,required int b}){}
 void namedOptional({int a=5, int b=4}){}











 bool isEmpityList(Object object){
   if(object is! List)
   return false;
   else
   return object.isEmpty;
 }

class Coffee{
  String? temprature;

  void Hot(){temprature = 'hot';}
  void Chill(){temprature = 'iced';}

  void checkTemp(){
    if(temprature != null)
    print('Ready to serve'+ temprature! + '!');
  }

  String serve() => temprature! + 'coffee';
}

int tracingFibonnaci(int n){

  final int result;
  if(n<2)
  result = n;
  else
  result = tracingFibonnaci(n-2) + tracingFibonnaci(n-1);
  print(result);
  return result;
}

String makeCommand(String executable,List<String>? args){
  var result = executable;

  if(args != null)
  result += " " + args.join(' ');
  return result; 

}
class HttpResponse{
  final int code;
  final String? error;

  HttpResponse.ok()
    :code = 200,
     error = null;
  HttpResponse.notFound()
    :code = 404,
     error = 'not Found';

  @override
  String toString(){
    if(code == 200) return 'ok';
    return 'ERROR $code ${error!.toUpperCase()}';
  }  
}
class Car{
  late int speed;

  void accelerate(){
    speed = 50;
  }
  void brake(){
    speed = 0;
  }
  int Steer() => speed -= 25; 
}

int readThermoMeter() => 25;

class Weather{
  int temprature = readThermoMeter();
}