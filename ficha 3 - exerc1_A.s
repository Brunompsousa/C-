using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace ficha3exer1
{
    class Program
    {
        static void Main(string[] args)
        {
            string dados;
            int numero;
            Boolean verify;

            StreamWriter tabout = new StreamWriter("tabuada.txt"); //Criamos o ficheiro e um ponteiro para o ficheiro

            do
            {

                Console.Write("Que tabuada deseja no ficheiro?\n--> ");
                dados = Console.ReadLine();
                verify = int.TryParse(dados, out numero);
                if (!verify)
                {
                    Console.WriteLine("Os dados nao sao validos");
                    Console.ReadKey();
                    Console.Clear();
                }

            } while (!verify);

            for (int i = 1; i <= 10; i++)
            {
                string text = string.Format("{0} x {1} = {2}", numero, i, numero * i); //formato da string guardado
                tabout.WriteLine(text); //guardamos a string no ficheiro
            }

            tabout.Close(); //fechamos o ficheiro
        }
    }
}
