using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace changevariavelde2numeros
{
    class Program
    {
        static void Main(string[] args)
        {
            int num1, num2;
            Boolean verify;

            do
            {
                Console.Write("Insira o primeiro numero: ");
                String dados = Console.ReadLine();
                verify = int.TryParse(dados, out num1);

                if (!verify)
                    Console.WriteLine("Dados incorretos");

            } while (!verify);

            do
            {
                Console.Write("Insira o segundo numero: ");
                String dados = Console.ReadLine();
                verify = int.TryParse(dados, out num2);

                if (!verify)
                    Console.WriteLine("Dados incorretos");

            } while (!verify);

            Console.WriteLine("Numeros antes da troca: {0} e {1}", num1,num2);

            trade(ref num1, ref num2);

            Console.WriteLine("Numeros depois da troca: {0} e {1}", num1, num2);

            Console.ReadKey();
        }


        //funcao para a troca do valor das variaveis uma para a outra
        static void trade(ref int num1, ref int num2)
        {
            int temp = num1;
            num1 = num2;
            num2 = temp;


        }
    }
}
