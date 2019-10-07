class Employee{
  String name;
  String Position;
  Employee(String name, String Position){
    this.name = name;
    this.Position = Position;
}
void PrintEmployeeDetails()=> print("Emplyee named ${name} works as ${Position}");
}