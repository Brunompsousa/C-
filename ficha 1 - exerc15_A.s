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
            int valores = 5;
            int num = 0, temp = 0;

            Boolean verifydados, verifyorder = true;

            for (int i = 0; i < valores; i++)
            { 

                do
                {
                    Console.WriteLine("Introduza um conjunto de {1} numeros ({0}/{1})", i + 1, valores);
                    String dados = Console.ReadLine();
                    verifydados = int.TryParse(dados, out num);

                    if (!verifydados)
                        Console.WriteLine("Valor nao e valido");

                } while (!verifydados);

                if(i!=0)
                    if (temp > num)
                        verifyorder = false;

                temp = num;
            }

            if (!verifyorder)
                Console.WriteLine("Os numeros nao foram introduzidos por ordem crescente");
            else
                Console.WriteLine("Os numeros foram introduzidos por ordem crescente");

            Console.ReadKey();

        }
    }
}