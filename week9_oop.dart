
class Employee {
  // Employee properties.
  String name;
  String position;
  double _salary;

  // Constructor initializes employee information.
  Employee(this.name, this.position, this._salary);

  // Getter allows access to the private salary.
  double get salary => _salary;

  // Setter updates salary with validation.
  set salary(double newSalary) {
    if (newSalary > 0) {
      _salary = newSalary;
    } else {
      print("Invalid salary amount.");
    }
  }

  // Displays employee information.
  void displayInfo() {
    print("Employee Name: $name");
    print("Position: $position");
    print("Salary: PHP ${_salary.toStringAsFixed(2)}");
  }

  // Displays the employee's assigned work.
  void performWork() {
    print("$name is performing assigned tasks.");
  }
}

void main() {
  // Create a List to store Employee objects.
  List<Employee> employees = [
    Employee("Heaven", "Manager", 45000),
    Employee("Renejay", "Developer", 35000),
    Employee("Mario", "Accountant", 30000),
  ];

  print("EMPLOYEE MANAGEMENT SYSTEM");

  // Loop through the employee list.
  for (Employee employee in employees) {
    print("\n--- EMPLOYEE DETAILS ---");
    employee.displayInfo();
    employee.performWork();
  }

  // Update the salary of the first employee.
  employees[0].salary = 48000;

  print("\n--- UPDATED EMPLOYEE SALARY ---");
  print("Heaven's New Salary: PHP ${employees[0].salary.toStringAsFixed(2)}");
}
