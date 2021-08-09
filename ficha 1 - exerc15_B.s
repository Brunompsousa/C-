using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ex13
{
    class Program
    {
        static void Main(string[] args)
        {
            int arraysize = 10;

            int[] numeros;
            numeros = new int[arraysize];

            Boolean verifydados, verifyorder = true;

            for (int i = 0; i < arraysize; i++)
            {
                do
                {
                    Console.WriteLine("Introduza um conjunto de {1} numeros ({0}/{1})", i + 1, arraysize);
                    String dados = Console.ReadLine();
                    verifydados = int.TryParse(dados, out numeros[i]);

                    if (!verifydados)
                        Console.WriteLine("Valor nao e valido");

                } while (!verifydados);
            }


            for (int i = 1; i < arraysize; i++)
            {

                if (numeros[i-1] > numeros[i])
                    verifyorder = false;
            }

            if (!verifyorder)
                Console.WriteLine("Os numeros nao foram introduzidos por ordem crescente");
            else
                Console.WriteLine("Os numeros foram introduzidos por ordem crescente");

            Console.ReadKey();

        }
    }
}