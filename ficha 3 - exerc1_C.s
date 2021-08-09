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

            escreverficheiro(numero);
            lerficheiro();
            copyfile();
            Console.ReadKey();

        }


        static void escreverficheiro(int num)
        {
            StreamWriter tabout = new StreamWriter("tabuada.txt"); //Criamos o ficheiro e um ponteiro para o ficheiro

            for (int i = 1; i <= 10; i++)
            {
                string text = string.Format("{0} x {1} = {2}", num, i, num * i); //formato da string guardado
                tabout.WriteLine(text); //guardamos a string no ficheiro
            }

            tabout.Close(); //fechamos o ficheiro
        }


        static void lerficheiro()
        {

            StreamReader tab = new StreamReader("tabuada.txt");

            Console.WriteLine("Inicio do conteudo do ficheiro \n----------------");

            while (tab.Peek() > 0)    //ENQUANTO ELE VIR QUE HA CARACTERES VAI LENDO
            {
                Console.WriteLine("{0}", tab.ReadLine());
            }

            Console.WriteLine("---------------- \nFim do conteudo do ficheiro");

            // Console.WriteLine(tab.ReadToEnd());
            // LE O FICHEIRO TODO E IMPRIME DE UMA SO VEZ


            /*string tabuada = File.ReadAllText("tabuada.txt");
            Console.WriteLine("{0}", tabuada);*/
            // LE O FICHEIRO TODO PARA UMA STRING E IMPRIME DE UMA SO VEZ

        }



        static void copyfile()
        {
            string nome;

            Console.Write("Quenome quer no ficheiro?\n--> ");
            nome = Console.ReadLine();

            File.Copy("tabuada.txt",nome+".txt",true);

            Console.Write("Copia completa ");

        }


    }
}
