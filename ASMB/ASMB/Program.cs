using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASMB
{
    public class Program
    {
        static void Main(string[] args)
        {
            int i;
            Console.WriteLine("\n Hello and welcome to the 14th Combast Support Hospital! If you need to see a Medic press 1, if you need to speak with Xray press 2, To visit the Lab press 3, and if you to visit the Pharmacy press 4.");
            i = int.Parse(Console.ReadLine());

            do
            {
                switch (i)
                {

                    case 1:
                        Medic m = new Med();
                        m.medgreeting();
                        m.medduties();
                        m.medadvice();
                        break;

                    case 2:
                        Xray xr = new Xrays();
                        xr.xraygreeting();
                        xr.xrayinstructions();
                        xr.xrayadvice();
                        break;

                    case 3:
                        Lab lb = new Labs();
                        lb.labgreeting();
                        lb.labinstructions();
                        lb.labadvice();
                        break;

                    case 4:
                        Pharmacy ph = new Pharm();
                        ph.pharmgreeting();
                        ph.pharminstructions();
                        ph.pharmadvice();
                        break;


                }
                Console.WriteLine("\n Hello and welcome to the 14th Combast Support Hospital! If you need to see a Medic press 1, if you need to speak with Xray press 2, To visit the Lab press 3, and if you to visit the Pharmacy press 4.");
                i = int.Parse(Console.ReadLine());

            } while (i != 0);
        }
    }
}
