using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASMB
{
    public abstract class Lab
    {
        
        public abstract void labgreeting();
        public abstract void labinstructions();
        public abstract void labadvice();
    }

    public class Labs : Lab

    {
        public override void labgreeting()

        { Console.WriteLine("\n Hi, welcome to the lab. My name is PFC Jones and I will be helping you today."); }

        public override void labinstructions()
        {
            Console.WriteLine("\n Please have a seat and roll up your sleeve or take off you jacket so that I can draw some vials of blood.");
        }

        public override void labadvice()
        {
            Console.WriteLine("\n Thank you for coming to the Lab. Have a nice day!");
        }

    }
}

