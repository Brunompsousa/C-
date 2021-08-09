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
            int num = 0;
            int maior = 0, menor = 0, media = 0;
            Boolean verifydados;

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

                if (i == 0)
                {
                    menor = num;
                    maior = num;
                    media = num;
                }

                if (menor > num)
                    menor = num;

                if (maior < num)
                    maior = num;
                if(i!=0)
                    media += num;

            }

            Console.WriteLine("Menor numero do array: {0}\nMaior numero do array: {1}\nMedia do array: {2}", menor, maior, media / valores);

            Console.ReadKey();

        }
    }
}
