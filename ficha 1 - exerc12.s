using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ex12
{
    class Program
    {

        static void Main(string[] args)
        {
            int num;
            Boolean verify;

            do
            {
                Console.Write("Insira o numero da tabuada que deseja: ");
                String dados = Console.ReadLine();
                verify = int.TryParse(dados, out num);

                if (!verify)
                    Console.WriteLine("Introduza um valor valido");

            }while(!verify);

            for (int i = 1; i <= 10; i++)
            {
                String tab = String.Format("{0} x {1} = {2}", num, i, num * i);
                Console.WriteLine(tab);
            }

            Console.ReadKey();

        }
    }
}   