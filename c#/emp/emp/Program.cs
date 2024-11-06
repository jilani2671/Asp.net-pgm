using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace emp
{

    public class Employee
    {
        public string emp_name;
        public double basicsalary;

        public Employee(string emp_name, double basicsalary)
        {
            this.emp_name = emp_name;
            this.basicsalary = basicsalary;
        }

        public double dasalary(double basicsalary)
        {
            double dasal = basicsalary * (0.10);
            return dasal;
        }
        public double tasalary(double basicsalary)
        {
            double tasal = basicsalary * (0.15);
            return tasal;
        }
        public double travelling (double basicsalary)
        {
            double travel = basicsalary * (0.20);
            return travel;
        }

        public void emp_detail()
        {
            Console.WriteLine("emp name :"+emp_name);
            Console.WriteLine("emp salary :" + basicsalary);
            Console.WriteLine("emp da salary :" + dasalary(basicsalary));
            Console.WriteLine("emp ta salary :" + tasalary(basicsalary));
            Console.WriteLine("emp travelling :" + travelling(basicsalary));
        }

    }
    internal class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("enter emp name ");
            string emp_name = Console.ReadLine();

            Console.WriteLine("enter basic salary ");
            double basicsalary = double.Parse(Console.ReadLine());
            
            Employee emp = new Employee(emp_name, basicsalary);
            emp.emp_detail();
            Console.ReadLine();


        }
    }
}
