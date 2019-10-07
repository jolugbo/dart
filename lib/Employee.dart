class Employee{
  String name;
  String Position;
  String _Level;
  int _Salary;
  Employee(String name, String Position){
    this.name = name;
    this.Position = Position;
}
void PrintEmployeeDetails()=> print("Emplyee named ${name} works as ${Position}");

  String get Level => _Level;
  int get Salary => _Salary;
  void set Level(String Level) => _Level = Level;
  void set Salary(int Salary) => _Salary = Salary;
}