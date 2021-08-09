using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*Programa n2 da ficha 1
O programa que diz olá dependendo da idade introduzida pelo utilizador.*/

namespace Exercicio2
{
    class Program
    {
        static void Main(string[] args)
        {
            int idd;
            Boolean verif;

            Console.WriteLine("Nome?");
            string name = Console.ReadLine();
            Console.WriteLine("idade?");
            string dados = Console.ReadLine();

            verif = int.TryParse(dados, out idd);

            if (!verif)
            {
                Console.WriteLine("Dados Invalidos");   //falha nos dados
            }

            else
            {

                if (idd < 10)
                {
                    Console.WriteLine("Olá Menino/Menina");
                }
                else if (idd <= 20)
                {
                    Console.WriteLine("Olá");
                }
                else
                {
                    Console.WriteLine("Olá Sr/Sra");
                }

            }
            Console.ReadKey();
        }
    }
}
