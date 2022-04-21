class Tuple<E>{
  final E? _a;
  final E? _b;
  final E? _c;

  E? get first => _a;
  E? get second => _b;
  E? get third => _c;  

  const Tuple(this._a, this._b, this._c);
  Tuple.fromList(List<E> list)
      :_a = list.asMap().containsKey(0)? list[0] : null,
      _b = list.asMap().containsKey(1)? list[1] : null,
      _c = list.asMap().containsKey(2)? list[2] : null;
    
  Tuple<num> operator +(Tuple<num> t){
    if(this is Tuple<num>){
      final thisAsTupleNum = this as Tuple<num>;
     Tuple(thisAsTupleNum._a! + t._a!,thisAsTupleNum._b! + t._b!,
     thisAsTupleNum._c! + t._c!);
     }
     return const Tuple(0,0,0);
     }
  Tuple<num> operator -(Tuple<num> t){
    if(this is Tuple<num>){
      final thisAsTupleNum = this as Tuple<num>;
     Tuple(thisAsTupleNum._a! - t._a!,thisAsTupleNum._b! - t._b!,
     thisAsTupleNum._c! - t._c!);
     }
     return const Tuple(0,0,0);
     }
  

    
}

void main(List<String> arguments){
  const t1 = Tuple(1,2,3);
  const t2 = Tuple(4, 5, 6);  
  const t3 = Tuple('a', 'b', 'c');
  const t4 = Tuple(Object(),Object(),Object());
  final t5 = Tuple.fromList(['hello','I','am','kila']);

  var list = [1,2,3,4];
  print(Utils.getItem(list, 3));
}

//stack example

class Stack<T>{
  final List<T> _stack = [];

  T get peak =>_stack.last;
  int get length => _stack.length;
  bool get canPop => _stack.isNotEmpty;

  T pop(){
    final T last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(T value) => _stack.add(value);
}

class Utils{
  static T? getItem<T>(List<T> list, int index) =>
      list.asMap().containsKey(index) ? list[index] : null;
}