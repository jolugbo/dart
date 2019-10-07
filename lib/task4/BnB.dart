//import 'House.dart';
//import 'Hotel.dart';
class BnB extends House implements Hotel{
  @override
  int rooms = 2;

  @override
  int guest = 4;

  @override
  void ringDoorbell() {
    print("Ding Dong");
  }
}
class Hotel{
  int guest;
}
abstract class House{
  int rooms;
  void ringDoorbell();
}