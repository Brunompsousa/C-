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
            int pali=0;

            Console.Write("Insira uma palavra para ver se e um palindromo: ");
            String Palavra = Console.ReadLine();

            int letras = Palavra.Length - 1;

            for (int i = 0; 0 < Palavra.Length - 1; i++)
            {

                if (Palavra[i] != Palavra[letras])
                {
                    Console.WriteLine("A palavra nao e um palindromo");
                    Console.ReadKey();
                    Environment.Exit(1);
                }

                letras--;
            }

            if (pali == 1)
                Console.WriteLine("A palavra e um palindromo");

            Console.ReadKey();
        }
    }
}
