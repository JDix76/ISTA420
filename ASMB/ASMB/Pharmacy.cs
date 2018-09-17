using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASMB
{
    public abstract class Pharmacy
    {
        public abstract void pharmgreeting();
        public abstract void pharminstructions();
        public abstract void pharmadvice();

    }

    public class Pharm : Pharmacy
    {
        public override void pharmgreeting()
        {
            Console.WriteLine("\n Hi my name is SSG Evans. Welcome to the Pharmacy.");
        }
        public override void pharminstructions()
        {
            Console.WriteLine("\n Please let me have your ID card so that I can verify your perscription ordered by your doctor.");
        }

        public override void pharmadvice()
        {
            Console.WriteLine("\n Take this mortirn 3 times a day by mouth with food or milk. Follow up with your doctor if you have any issues with your medication. Thank You!");
        }
    }
}
