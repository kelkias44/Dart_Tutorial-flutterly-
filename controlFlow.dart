import 'dart:math' as math;
enum Condition{sunny,cloudy, drizzy, rainy}
void main(){
  //if/else statement
  int a=5;
  if(a.isEven){
    print('even');
  }else{
    print('not even');
  }
  a.isEven ? print('even') : print('not even');

  //for loop statements
  var list = [1,2,3,4,5].where((element) => element != 1)..forEach(print);
  // for(var i=0; i<list.length; i++){
  //   print(list[i]);
  // }
  for(var item in list){
    print(item);
  }
  list.forEach(print);

  //while
  int j=0;

  while(j<0){
    j++;
    print(j);
  } 
  do{ 
    j++;
    print(j);
  }while (j<0);


  //switch/case
  var condition = Condition.sunny;

  switch(condition){
    case Condition.sunny:
          print('sunny');
          break; 
    case Condition.rainy:
          print('rainy');
          break;
    case Condition.cloudy:
          print('cloudy');
          break;
    default:
      print('unknown weather');    
  }

  //assert statement 
  var li = [];
  assert(li.isEmpty,"empty");


  //Exception

  int min = -1, max = 2;
  int zero = min + math.Random().nextInt(max-min);

  print('Random zero: $zero');

  try{
    if(zero < 0){
      throw NegativeValue(message: 'negative value');
    }else if(zero > 0){
      throw PositiveValue(message:'positive value');
    }
  } on NegativeValue{
    print('The value is negative');
  }catch(e){
    if(e is PositiveValue){
      print('The value is positive');
      rethrow;
    }      
    }finally{
      zero=0;
  }
  if(zero==0){
    print('Zero at the end: $zero');
  }
}

class NegativeValue implements Exception{
  final String message;
  NegativeValue({required this.message});
}
class PositiveValue implements Exception{
  final String message;
  PositiveValue({required this.message});
}