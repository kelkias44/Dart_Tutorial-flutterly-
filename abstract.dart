abstract class UserRepoInterface{
  late final List<int> usersList;

  void create();
  List<int> read();
  void update();
  void delete();
}
class UserRepo implements UserRepoInterface{
  @override
  late final List<int> usersList;
  UserRepo(){
    usersList = read();
  }

  @override
  void create() => print('create');

  @override
  void delete() => print('delete');

  @override
  List<int> read(){
      throw UnimplementedError();    
  }

  @override
  void update() => print('update');
}

class Animal{
  external void doSth();

}
class Cat extends Animal implements UserRepoInterface{
  @override
  void doSth() {
    // TODO: implement doSth
    super.doSth();
  } 
  @override
  late final List<int> usersList;

  @override
  void create() {
    // TODO: implement create
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  List<int> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  void update() {
    // TODO: implement update
  }
  
}

void main(){
  UserRepo userRepo = UserRepo();
  userRepo.create();
  userRepo.delete();
  userRepo.read();
  userRepo.update();
}