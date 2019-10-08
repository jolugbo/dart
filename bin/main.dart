import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:helloworld/dartintermediate.dart' as intermediate_lessons;
import 'package:helloworld/firstClass.dart';
import 'package:helloworld/Employee.dart';
import 'package:helloworld/Animal/feline.dart';
import 'package:helloworld/Student/GraduateStudent.dart';
import 'package:helloworld/Student/student.dart';
import 'package:helloworld/task4/BnB.dart';
import 'package:helloworld/Task5/Employee.dart';
import 'package:helloworld/Generics/GenericCounter.dart';

enum colors { red, blue, gray, yellow }
main(List<String> arguments) async {
  Payroll rec= Payroll();
  rec.add(Manager());
  rec.add(Cashier());
  rec.add(Manager());
  rec.add(Cashier());
  rec.add(Cashier());
  rec.print();
}


  /*

GenericCounter<double> numbers = GenericCounter<double>();
numbers.addAll([1.0,2.8,9.2,4.1]);
numbers.total();
  /*String message = intermediate_lessons.welcomeMessage("femi");
  String encoded = intermediate_lessons.encode(message);
  String decoded = intermediate_lessons.decode(encoded);
  print(message);
  print(encoded);
  print(decoded);*/
  //var url = 'http://www.voidrealms.com';
  //var url2 = 'http://www.example.com/foobar.txt';
  //String postResp = await intermediate_lessons.httpPost(url);
  //String getResp = await intermediate_lessons.httpGet(url);
  //print(postResp);
  //print(getResp);
  //intermediate_lessons.getFile();
//  firstClass myClass = firstClass("Femi");
//  myClass.welcomeMessage();
//Employee newEmployee = Employee("James Bond", "DSS");
//newEmployee.PrintEmployeeDetails();
//newEmployee.Level = "HOD";
//newEmployee.Salary = 900000;
//print(newEmployee.Salary);
Feline cat = Feline();
print(cat.Breath);
cat.runs();
cat.standoutFeature();
Student newStudent = GraduateStudent();
newStudent.details();
BnB newHost = BnB();
newHost.ringDoorbell();
void printInput(){
  stdout.write("Please Select a number between 1 and 100\r\n");
  int option = int.parse(stdin.readLineSync());
  for(int i = 1;i <= option; i++){
    print(i);
    if(i==option/2)print("half done");
  }
}
void printName([String name = ""]){
  // if(name.isEmpty) name = name.padLeft(name.length + 1);
  print("hello${name}");
}
void DoneLoading(String docuName,[bool openDocument = false]){
  String action = "Save Document As";
   if(openDocument) action ="Open Document";
  print("Downloading ${docuName} ${action}");
}
int dogYears(int humanAge, int multiplier){
  return humanAge * multiplier;
}
  for(int i = 1; i <=10; i++ ){
    if(i==5){
      print("we are half way there");
      continue;
    }
    print(i);
  }
  List<String> person = ["temi","tolu","tola","tunde"];
  person.forEach((String name){
    print("allow ${name}");
  });
  stdout.write("Please provide your age\r\n");
  int age = int.parse(stdin.readLineSync());
  if(age > 30){
    print("old man");
  }
  else {print("young man");}
  print("starting");
  int age = 25;
  assert(age == 25);
  print("finished");
  List<String> people =  ["temi","tolu","tola","tunde"];

  int location = int.parse(stdin.readLineSync());

  print(people[location]);
  Map<String,int> location = {"longitude":12,"latitude":8};
  location.putIfAbsent("z-axis", () => 32);//must be a function
  print(location["z-axis"]);
   Queue lineAtABank = Queue();
   lineAtABank.add("seun");
   lineAtABank.add("femi");
   lineAtABank.add("tayo");
   lineAtABank.removeFirst();
   lineAtABank.removeLast();
   print(lineAtABank);
  Set<int> newVar = Set<int>();//sets are unordered
  newVar.add(1);
  newVar.add(5);
  newVar.add(4);
  newVar.add(1);//value would no be repeated
  print(newVar);
  List values = [1,2,3,4,6];
  List<int> intValues = List<int>();
  intValues.add(values[0]);
  intValues.add(values[4]);
  print(values.length);
  print(intValues.length);
  print(colors.values);
  stdout.write("What is your name\r\n");
  String name = stdin.readLineSync();
  name.isEmpty
      ? stderr.write("Please input your name")
      : print('Welcome ${name} to enlightenment');
  stdout.write("What is your first name\r\n");

  String firstName = stdin.readLineSync();

  stdout.write("What is your last name\r\n");

  String lastName = stdin.readLineSync();

  stdout.write("your fullnames are ${firstName} ${lastName}\r\n");*/

