using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mathmatical_Formulas
{
    class Program
    {
        static void Main(string[] args)
        {
            // Tell the user what they are doing
            Console.WriteLine("We will calculate the area and circumference of a circle: ");

            // Find the radius
            Console.WriteLine("Insert the radius: ");
            string radius = Console.ReadLine();
            double radius1 = double.Parse(radius);

            // Multiple the radius by 2 and PI and to find area multiply PI by the rad * rad
            double circumference = radius1 * 2 * Math.PI;
            double area = radius1 * radius1 * Math.PI;

            Console.WriteLine($"Radius is {radius1} and circumference is {circumference} and the area is {area} ");
            Console.WriteLine();
        
           
            // Tell the user that this is part 2 of the equation and we will now calculate the volume of a hemisphere
            Console.WriteLine("The volume of a hemisphere given the length of the radius is: ");

            //  Formula to calculate the volume of a hemisphere give the area of a radius
            double volume = 4 / 3 * Math.PI * Math.Pow(radius1, 3) / 2;
            Console.WriteLine($"Volume = {volume} " );
            Console.WriteLine();


            // Part 3: Find the area of a triangle and ask them to enter the length of each side
            Console.WriteLine("Now find the area of a traiangle given the length of the side: " );
            Console.WriteLine();
        
            Console.WriteLine("Input the length of side A: ");
            string sda = Console.ReadLine();
            double sideA = double.Parse(sda);

            Console.WriteLine("Input the length of side B: ");
            string sdb = Console.ReadLine();
            double sideB = double.Parse(sdb);

            Console.WriteLine("Input the length of side C: ");
            string sdc = Console.ReadLine();
            double sideC = double.Parse(sdc);

            // Now we need to solve for P
            double HalfCir = (sda + sdb + sdc) /2;
            // Find the area 
            double TriangleArea = Math.Sqrt(HalfCir) * (HalfCir - sda) * (HalfCir - sdb) * (HalfCir - sdc);
            Console.WriteLine($"");



            
            
       












        }
    }
}
