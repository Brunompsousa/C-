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
            String pinvert="";

            Console.Write("Insira uma palavra para que esta seja invertida: ");
            String Palavra = Console.ReadLine();

            for (int i = Palavra.Length - 1; i >= 0; i--)
            {
                pinvert += Palavra[i];
            }

            Console.Write("A sua palavra invertida é: {0}", pinvert);

            Console.ReadKey();
        }
    }
}