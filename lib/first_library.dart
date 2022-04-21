library first_library;

part 'first_library_extension.dart';
part 'first_library_extension1.dart';

const int _privateTopLevel = 15;
const int publicTopLevel = 12;

void _privateTopLevelFunction(){}
void publicTopLevelFunction(){}

class A{
  final int _privateFeild = 5;
  void _privateMethod(){}

  final int publicField =10;
  void publicMethod(){}
}

void randomFunction(){
  var a=A();
  a._privateFeild;
  a.publicMethod();
}