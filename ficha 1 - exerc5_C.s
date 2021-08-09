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
            int numero, stop=1;
            do
            {
                do
                {

                    Console.WriteLine("Introduza um valor entre 1 e 10? \nIntroduza 0 para sair do programa ");
                    string dados = Console.ReadLine();

                    verify = int.TryParse(dados, out numero);

                    if (!verify)
                    {
                        Console.WriteLine("Dados invalidos");   //falha nos dados
                        Console.ReadKey();
                        Console.Clear();
                    }


                } while (verify == false);

                switch (numero)
                {
                    case 0:
                        Console.WriteLine("Obrigado por usar o Programa");
                        stop = 0;
                        break;
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
                Console.Clear();
            } while (stop != 0);
        }
    }
}
