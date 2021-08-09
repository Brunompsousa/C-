using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio6_f1
{
    class Program
    {
        static void Main(string[] args)
        {
            int numero;
            Boolean verify;
            string dados;


            do
            {
                Console.WriteLine("Introduza um numero entre 1 e 1000, para saber se é ou nao primo");
                Console.WriteLine("Numero a introduzir: ");
                dados = Console.ReadLine();
                Console.Clear();
                verify = int.TryParse(dados, out numero);

                if (!verify || numero > 1000 || numero < 1)
                {
                    Console.WriteLine("Valor introduzido invalido");
                    Console.WriteLine("Prima qualquer tecla para voltar a tentar");
                    Console.ReadKey();
                    Console.Clear();
                }

            } while (numero > 1000 || numero < 1);

            NumerosPrimos(numero, ref verify);

            if (verify == false)
                Console.WriteLine("{0} não é um número primo", numero);

            else if (verify == true)
                Console.WriteLine("{0} é um número primo", numero);

            Console.ReadKey();
        }


        // Funcao para verificar se o numero e primo ou nao 

        static void NumerosPrimos(int numero, ref Boolean verify)
        {
            int primo = 0;

            for (int i = 1; i <= numero; i++)
            {
                int resto = numero % i;

                if (resto == 0)
                    primo++;

            }

            if (primo == 2)
                verify = true;

            else
                verify = false;

        }
    }
}
