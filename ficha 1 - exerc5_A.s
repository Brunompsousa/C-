// Resolucao alinea A)

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {

            Boolean verify;
            int numero;

            do
            {

                Console.WriteLine("Introduza um valor entre 1 e 10?");
                string dados = Console.ReadLine();

                verify = int.TryParse(dados, out numero);

                if (!verify)
                {
                    Console.WriteLine("Dados invalidos");   //falha nos dados
                    Console.Clear();
                }

                if (numero > 10 || numero < 1)
                {
                    Console.WriteLine("Numero fora do intervalo pedido, prima qualquer tecla para voltar a tentar");
                    Console.ReadKey();
                    Console.Clear();
                }

            } while (numero > 10 || numero < 1);

            switch (numero)
            {
                case 1:
                    Console.WriteLine("Um");
                    break;
                case 2:
                    Console.WriteLine("Dois");
                    break;
                case 3:
                    Console.WriteLine("Três");
                    break;
                case 4:
                    Console.WriteLine("Quatro");
                    break;
                case 5:
                    Console.WriteLine("Cinco");
                    break;
                case 6:
                    Console.WriteLine("Seis");
                    break;
                case 7:
                    Console.WriteLine("Sete");
                    break;
                case 8:
                    Console.WriteLine("Oito");
                    break;
                case 9:
                    Console.WriteLine("Nove");
                    break;
                case 10:
                    Console.WriteLine("Dez");
                    break;
                default:
                    Console.WriteLine("Nao Sei");
                    break;
            }

            Console.ReadKey();
        }
    }
}
