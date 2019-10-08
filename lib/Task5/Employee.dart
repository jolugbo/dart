//Make the following classes
//
//Employee
//
//Manager – inherit employee
//
//Cashier – inherit employee
//
//Payroll – use generics to allow only descendants of the employee class
//
//Both the Cashier and Manager classes should have a “sayHello” function that prints the class name.
//
//The payroll class should allow adding to an internal list, and a “print” function that calls the “sayHello” of each item in the internal list
//
//Questions for this assignment
//Why use generics?
 class Employee {
 void sayHello(){}
}
class Manager extends Employee{
  @override
 void sayHello()=> print("Manager");
}
class Cashier extends Employee{
  @override
  void sayHello()=> print("Cashier");
}
class Payroll<T extends Employee>{
List<T> _staffs = List<T>();
void add(T t)=> _staffs.add(t);
void print(){
  _staffs.forEach((T staff){
    staff.sayHello();
  });
}
}