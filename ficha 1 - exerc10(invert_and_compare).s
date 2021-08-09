using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exerc10
{
    class Program
    {
        static void Main(string[] args)
        {
            string invert="";

            Console.Write("Insira uma palavra para ver se e um palindromo: ");
            String Palavra = Console.ReadLine();

            Invertstring(Palavra, ref invert);

            if (Palavra != invert)
                Console.WriteLine("A palavra nao e um palindromo");
            else
                Console.WriteLine("A palavra e um palindromo");

            Console.ReadKey();
        }

        static void Invertstring(String p1, ref String p2)
        {

            for (int i = p1.Length-1 ; i >= 0 ; i--)
            {
                p2 += p1[i];
            }
        }
    }
}
