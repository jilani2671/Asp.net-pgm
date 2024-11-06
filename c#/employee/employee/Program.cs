using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace EmployeeNamespace
{
    class Employee
    {
    }


    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter Employee Name: ");
            string name = Console.ReadLine();

            Console.Write("Enter Basic Salary: ");
            decimal basicSalary = Convert.ToDecimal(Console.ReadLine());

            Employee employee = new Employee(name, basicSalary);
            employee.DisplaySalary();
            Console.ReadLine();
        }
    }
}
