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
            delficheiro();
            backupbase();


            Console.WriteLine("Nome do ficheiro a copiar para backup");
            dados = Console.ReadLine();
            backupdir(dados);
            dirview();

            Console.ReadKey();
        }


        static void escreverficheiro(int num)
        {
            BinaryWriter tabout = new BinaryWriter(File.Create("tabuada")); //Temos de ir fazer a escrita em binario, mas presisamos de criar o ficheiro dentro da funcao

            for (int i = 1; i <= 10; i++)
            {
                int result = num * i; //formato da string guardado

                tabout.Write(num); //guardamos a string no ficheiro
                tabout.Write(i); //guardamos a string no ficheiro
                tabout.Write(result); //guardamos a string no ficheiro
            }

            tabout.Close(); //fechamos o ficheiro
        }

        static void lerficheiro()
        {

            BinaryReader tab = new BinaryReader(File.Open("tabuada", FileMode.Open));

            Console.WriteLine("Inicio do conteudo do ficheiro \n----------------");

            while (tab.PeekChar() > 0)    //ENQUANTO ELE VIR QUE HA CARACTERES VAI LENDO
            {
                Console.Write("{0} * {1} = {2}\n", tab.ReadInt32(), tab.ReadInt32(), tab.ReadInt32());

            }

            Console.WriteLine("---------------- \nFim do conteudo do ficheiro");

            tab.Close();

            // Console.WriteLine(tab.ReadToEnd());
            // LE O FICHEIRO TODO E IMPRIME DE UMA SO VEZ


            /*string tabuada = File.ReadAllText("tabuada.txt");
            Console.WriteLine("{0}", tabuada);*/
            // LE O FICHEIRO TODO PARA UMA STRING E IMPRIME DE UMA SO VEZ

        }

        static void copyfile()
        {
            string nome;

            Console.Write("Que nome quer no ficheiro?\n--> ");
            nome = Console.ReadLine();

            File.Copy("tabuada", nome, true); // acrecentamos.txt ao ficheiro para que seja um ficheiro de texto
                                                           // TRUE - substituir o ficheiro caso este ja exista
            Console.Write("Copia completa ");

        }

        static void delficheiro()
        {

            File.Delete("Tabuada");

            Console.WriteLine("\nO ficheiro tabuada foi apagado");

        }

        static void backupbase()
        {

            Directory.CreateDirectory("backup");
            Console.WriteLine("\nPasta de backups criada");

        }

        static void backupdir(string nomeficheiro)
        {
            int i = 1;
            Boolean verify = File.Exists(nomeficheiro);

            if (verify == false)
            {
                Console.WriteLine("O ficheiro que quer nao existe");
            }
            else
            {
                while (File.Exists("backup/" + nomeficheiro + "_" + i))
                {
                    i++;
                }

                File.Copy(nomeficheiro, "backup/" + nomeficheiro + "_" + i);
                Console.WriteLine("O ficheiro de backup foi criado com sucesso");
            }
        }

        static void dirview()
        {

            //listar dir da pasta backups
            Console.WriteLine("\nConteudo da pasta de Backup's\n-----------------------");

            string[] files = Directory.GetFiles("backup");
            foreach (var file in files)
            {
                Console.WriteLine("{0}", file);
            }

        }


    }
}
