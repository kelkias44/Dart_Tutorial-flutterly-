void main(){

//   //num,int,double


//   // int a=5;
//   // int b=10;
//   // print(a+b);
//   // print(a-b);
//   // print(a/b);

//   // double  c = 5.5;
//   // double d = 10.5;

//   // print(c+d);
//   // print(d-c);
//   // print(d/c);


//   // print(c+b);
//   // print(d-b);
//   // print(a/c);
//   String s = '5';
//   num a=5;
//   a=5.5;

//   num v = num.parse(s);
//   int integer = int.parse(s);

//   String integ = integer.toString(); 
//   // print(a.isOdd); can only use the functionalities that can be applied in both int and double in num
//   num b=10;
//   print(a+b);
//   print(a-b);
//   print(a/b);

//   // num  c = 5.5;
//   // num d = 10.5;

//   // print(c+d);
//   // print(d-c);
//   // print(d/c);


//   // print(c+b);
//   // print(d-b);
//   // print(a/c);
//   num n = 4;
//   double d = 4.5;

// // int clampedIntOutput = integer.clamp(0,1);
// // double clampedDoubleOutput = d.clamp(0.0, 5.5);
// // num clampedNumOutpu = n.clamp(0.0,1);
// // print('$clampedIntOutput $clampedDoubleOutput $clampedNumOutpu');

// double g = 5.5;

// int ceiledValue = g.ceil();
// int floorValue = g.floor();
// int roundValue = g.round();

// print('$ceiledValue $floorValue $roundValue');

// int y=3;
// int z=2;
// var x = y~/z;

// print(x);

// //string

// String s1 = 'hello,kila';
// String s2 = "it's sunnny outside";
// String s3 = 'it\'s sunny outside';

// double temp = 13.2;
// String capital = 'here';

// print('temprature $temp to capital ${capital.toUpperCase()}');

// String simpleConcatination = 'hello' 'kila';
// String plusConcatination = 'hello' + 'kila';

// String intro = 'it is raining \n I am at my home';
// String intro2 = '''it is raining
// I am at my home''';

// String rawString = r'it is raining \n I am at my home';
// String uniCode = 'here is the emoji: \u{1f339}';

// print(uniCode);

// String constant1 = 'yes $temp';
// String constant2 = 'yes $temp';

// print(constant1.hashCode);
// print(constant2.hashCode);

// //Boolean
// bool bc = true;

// if(bc)
// print('true');

// int ac=2;
// String name = 'kila';

// if(ac==2)
// print(true);

// if(name.isNotEmpty)
// print('it is not empty');

// //List
// List<int> lis = [1,2,3];
// List<bool> boolean = [true,false,true];
// List<A> listOfObject = [A(),A()];

// List<Object?> complex = [1,3.0,'kila',true,null];

// // var integerValue = complex[0] as int;
// // var doubleValue = complex[1] as double;
// // var stringValue = complex[2] as String;
// // var boolValue = complex[3] as bool;
// // var nullValue = complex[3] as null;

// List<int> a1 = [1,2,3];
// List<int?> a2 = [1,2,null];
// List<int>? a3 = [1,2,3];
// List<int?>? a4 = [1,2,null];

List<int> la =[];
List<int> lb =[1,2,3];
List<int> lc =List.filled(3,3);
List<int> ld =List.empty(growable: true);
List<int> le = List.generate(3, (index) => index);

print(la);
print(lb);
print(lc);
print(ld);
print(le);

}
class A {}