using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Arrays
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter range of an arrary: ");
            int range = int.Parse(Console.ReadLine());

            int[] numbers = new int[range];
            for (int i = 0; i < range; i++)
            {
                Console.WriteLine("Enter element " + (i + 1) + " of the array: ");
                numbers[i] = int.Parse(Console.ReadLine());
            }

            // Finding even numbers
            Console.WriteLine("Even numbers are: ");
            foreach (int num in numbers)
            {
                if (num % 2 == 0)
                {
                    Console.Write(num + " ");
                }
            }
            Console.WriteLine();


            // Finding odd numbers
            Console.WriteLine("Odd numbers are: ");
            foreach (int num in numbers)
            {
                if (num % 2 != 0)
                {
                    Console.Write(num + " ");
                }
            }
            Console.WriteLine();


            // Finding prime number
            Console.WriteLine("Prime numbers: ");
            for (int i = 0; i < range; i++)
            {
                bool isPrime = true;
                if (numbers[i] <= 1)
                {
                    isPrime = false;
                }
                else
                {
                    for (int j = 2; j <= Math.Sqrt(numbers[i]); j++)
                    {
                        if (numbers[i] % j == 0)
                        {
                            isPrime = false;
                            break;
                        }
                    }
                }

                if (isPrime)
                {
                    Console.Write(numbers[i] + " ");
                }
            }

            Console.ReadLine();

        }
    }

}

