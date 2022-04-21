import 'dart:async';

void main(List<String> args) {
  asyncGenerator().listen(print);



  // print('start');

  // Future(()=>1).then(print);
  // Future(()=>Future(()=>2)).then(print);

  // Future.delayed(const Duration(seconds: 1),()=>3).then(print);
  // Future.delayed(const Duration(seconds: 1),()=>Future(()=>4)).then(print);

  // Future.value(5).then(print);
  // Future.value(Future(()=>6)).then(print);

  // Future.sync(()=>7).then(print);
  // Future.sync(()=>Future(()=>8)).then(print);

  // Future.microtask(()=>9).then(print);
  // Future.microtask(()=>Future(()=>10)).then(print);

  // Future(()=>11).then(print);
  // Future(()=>Future(()=>12)).then(print);

  

  // print('end');
  } 

  Future fut ()async{
    late final int a;

    print('start');

    a = await Future(() => 1);
    //await Future(()=>1).then((value) => a=value));



    print(a);
    print('end');
  }

  void stream()async{
    // Stream.periodic(const Duration(seconds: 1),(x)=>x).listen(print);
    // Stream.periodic(const Duration(seconds: 2),(x)=>-x).listen(print);

    // Stream.fromFutures([Future(()=>1),Future.value(2)]).listen(print);
    final StreamController streamController =StreamController<int>.broadcast();
    final streamSubscription = streamController.stream.listen(print);
    final otherStreamSubscription = streamController.stream.listen(print);
    var value = 0;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if(value == 5){
        timer.cancel();
        streamController.close();
        streamSubscription.cancel();
        otherStreamSubscription.cancel();
      }else
      streamController.add(value++);
     });

     var max=0;
     await streamController.stream.forEach((value){
       max= (value > max) ? value : max;
     });
    //  await for (final value in streamController.stream) {
    //    max= (value > max) ? value : max;       
    //  }  
     print(max);
     
  }
  
  var negativeStream = 
      Stream<int>.periodic(const Duration(milliseconds: 500), (x)=>-x);

  Stream<int> asyncGenerator()async*{
    for(int i=0;i<=5;i++){
      await Future<void>.delayed(const Duration(seconds: 1));
      yield i;
    }
    yield* negativeStream;
  }