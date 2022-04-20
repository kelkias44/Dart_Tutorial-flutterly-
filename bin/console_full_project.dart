import 'package:console_full_project/console_full_project.dart' as console_full_project;
import 'package:console_full_project/src/calculate.dart';

void main() {
  print('Add:' + calAdd().toString());
  print('Subtract:' + calSubtract().toString());
  print('Multiply:' + calMultiply().toString());
  print('Divide:' + calDivide().toString());

  // try{
  //   print('Hello world: ${console_full_project.calculate()}!\n'
  //   'argsum: ${arguments.fold<int>(0, (previousValue, element) => previousValue + int.parse(element))}');
  // }
  // catch(e){
  //   print('Error: at least one argument is not integer');
  // }
}
