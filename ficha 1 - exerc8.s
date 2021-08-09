using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace imprimirprimosentreintervalo
{
    class Program
    {
        static void Main(string[] args)
        {
            int num1, num2;
            Boolean verify;


            do
            {
                Console.WriteLine("Introduza dois numeros, em que 1º e maior que o 2º, para mostrar os numeros primos entre estes");

                do
                {
                    Console.Write("Introduza o Menor numero: ");
                    string dados = Console.ReadLine();
                    verify = int.TryParse(dados, out num1);

                    if (!verify)
                        Console.WriteLine("Valor invalido");


                } while (!verify);

                do
                {
                    Console.Write("Introduza o maior numero: ");
                    string dados = Console.ReadLine();
                    verify = int.TryParse(dados, out num2);

                    if (!verify)
                        Console.WriteLine("Valor invalido");

                } while (!verify);

                if (num1 >= num2)
                {
                    Console.WriteLine("Os numero nao seguem a regra ({0} < {1})", num1, num2);
                    Console.WriteLine("Prima qualquer tecla para voltar a tentar");
                    Console.ReadKey();
                    Console.Clear();
                }

            } while (num1 >= num2);

            Console.Write("Numero primo: ");

            do
            {
                int primo = 0;

                for (int i = 1; i <= num1; i++)
                {
                    int resto = num1 % i;

                    if (resto == 0)
                        primo++;

                }
                if (primo == 2)
                    Console.Write("{0} ", num1);

                num1++;


            } while (num1 < num2);

            Console.ReadKey();
        }
    }
}