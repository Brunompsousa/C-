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
            int arraysize = 5;

            int[] numeros;
            numeros = new int[5];

            int maior = 0,menor=0,media=0;
            Boolean verifydados;

            for (int i = 0; i < arraysize; i++)
            {
                do
                {
                    Console.WriteLine("Introduza um conjunto de {1} numeros ({0}/{1})", i+1,arraysize);
                    String dados = Console.ReadLine();
                    verifydados = int.TryParse(dados, out numeros[i]);

                    if (!verifydados)
                        Console.WriteLine("Valor nao e valido");

                } while (!verifydados);
            }

            menor = numeros[0];
            maior = numeros[0];
            media = numeros[0];               

            for (int i =1;i < arraysize;i++)  //Menor numero do array; Maior numero do array; Media do array
            {

                if (menor > numeros[i])
                    menor = numeros[i];

                if (maior < numeros[i])
                    maior = numeros[i];

                media += numeros[i];

            }

            Console.WriteLine("Menor numero do array: {0}\nMaior numero do array: {1}\nMedia do array: {2}", menor, maior, media / arraysize);

            Console.ReadKey();

        }
    }
}