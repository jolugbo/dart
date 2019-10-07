import 'student.dart';
class GraduateStudent implements Student{
  @override
  String name = "Jolugbo";

  @override
  void details()  => print("${name} is a Graduate Student");

}