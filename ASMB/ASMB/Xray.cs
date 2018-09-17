using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASMB
{
    public abstract class Xray
    {
        public abstract void xraygreeting();
        public abstract void xrayinstructions();
        public abstract void xrayadvice();
    }

    public class Xrays : Xray
    {
        public override void xraygreeting()
        {
            Console.WriteLine("\n Welcome to Xray! My name is SGT Seethruyou. Can I please see your identification card to verify who you are please?");

        }

        public override void xrayinstructions()
        {
            Console.WriteLine("\n Please remove all jewerly,your watch watch and place your cell phone in the basket before I put you on the Xray table.");
        }

        public override void xrayadvice()
        {
            Console.WriteLine("\n Your Xrays will available for your doctor to review within the next 20 min. Thanks for visiting the Xray.");
        }

    }
}
