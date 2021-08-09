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

            int[] numeros;
            numeros = new int[10];

            int num = 0;
            Boolean verifydados;
            Boolean verifynums = false;

            for (int i = 0; i < 10; i++)
            {
                do
                {
                    Console.WriteLine("Introduza um conjunto de 10 numeros ({0}/10)", i+1);
                    String dados = Console.ReadLine();
                    verifydados = int.TryParse(dados, out numeros[i]);

                    if (!verifydados)
                        Console.WriteLine("Valor nao e valido");

                } while (!verifydados);
            }

                do
                {

                    Console.Write("Introduza o numero que quer procurar no grupo dos numeros: ");
                    String dados = Console.ReadLine();
                verifydados = int.TryParse(dados, out num);

                    if (!verifydados)
                        Console.WriteLine("Valor nao e valido");

                } while (!verifydados);


            for(int i = 0; i < 10; i++)
            {

                if (numeros[i] == num)
                    verifynums = true;
            }

            if (!verifynums)
                Console.WriteLine("O numero nao esta entre os valores introduzidos anteriormente");
            else
                Console.WriteLine("O numero esta entre os valores introduzidos anteriormente");

            Console.ReadKey();

        }
    }
}
