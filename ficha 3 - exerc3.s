using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace f3e3
{
    class Program
    {
        static void Main(string[] args)
        {
            List<int> numeros=new List<int>();
            int num = 0;

            do
            {

                try
                {

                    Console.WriteLine("Introduza os numeros a guardar ({0}/10)", numeros.Count + 1);
                    string dados = Console.ReadLine();
                    num = int.Parse(dados);
                    numeros.Add(num);
                    Console.Clear();

                }
                catch (FormatException exp)
                {
                    Console.WriteLine("Os dados introduzidos sao invalidos\nPrima uma telca para voltar a tentar");
                    Console.ReadKey();
                    Console.Clear();
                }
                catch (Exception exp)
                {
                    Console.WriteLine("Erro desconhecido");
                    Console.ReadKey();
                }

            } while (numeros.Count < 10);

            Console.Write("Os numeros introduzidos foram: ");

            for (int i = 0; i < 10; i++)
            {
                if (i<9)
                {
                    Console.Write("{0} ,", numeros[i]);
                }
                else
                {
                    Console.Write("{0}", numeros[i]);
                }
                
            }

            Console.ReadKey();

        }
    }
}
