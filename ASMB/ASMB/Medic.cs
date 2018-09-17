using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASMB
{
    public abstract class Medic
    {
        public abstract void medgreeting();
        public abstract void medduties();
        public abstract void medadvice();
    }

    public class Med : Medic

    {
        public override void medgreeting()
        {
            Console.WriteLine("\n Hi my name is SPC Simpson! How can I help you today?");

        }

        public override void medduties()
        {
            Console.WriteLine("\n Part of my job is to take your blood pressure, get your height and weight, and also check your temprature.");
        }

        public override void medadvice()
        {
            Console.WriteLine("\n You should ensure you drink lots of fluids and get the proper amount of sleep everyday! ");
        }

    }
}
