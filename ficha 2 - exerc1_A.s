using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace F2exercicio1
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] numeros = new int[7];
            Boolean verify;

            for (int i = 0; i < 7; i++)
            {
                do
                {
                    Console.WriteLine("Introduza os numeros da sua aposta");
                    if (i < 5)
                    {
                        Console.Write("Numero ({0}/5): ", i + 1);
                        string dados = Console.ReadLine();
                        verify = int.TryParse(dados, out numeros[i]);
                        Console.Clear();
                    }
                    else
                    {
                        Console.Write("Estrela ({0}/2): ", i - 4);
                        string dados = Console.ReadLine();
                        verify = int.TryParse(dados, out numeros[i]);
                        Console.Clear();
                    }

                } while (!verify);
            }

            Console.Write("Numeros:");

            for (int i = 0; i < 7; i++)
            {
                    
                Console.Write(" {0}", numeros[i]);
            }
            Console.Write("\nEstrelas:");
            for (int i = 5; i < 7; i++)
            {

                Console.Write(" {0}", numeros[i]);
            }

            Console.ReadKey();

            
        }
    }
}
