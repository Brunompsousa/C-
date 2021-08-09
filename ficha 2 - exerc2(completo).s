using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ficha2exer2
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] viaturas = new string[] {};
            Boolean verify;
            int opcao;

            do
            {

                do
                {
                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - ADD");
                    Console.WriteLine("2 - TIRAR");
                    Console.WriteLine("3 - VER");
                    Console.WriteLine("4 - PROCURAR");
                    Console.WriteLine("0 - SAIR");
                    Console.WriteLine("--> ");
                    string dados = Console.ReadLine();
                    verify = int.TryParse(dados, out opcao);
                    Console.Clear();

                } while (!verify);

                switch (opcao)
                {
                    case 1:
                        addviatura(ref viaturas);
                        break;
                    case 2:
                        apagarviatura(ref viaturas);
                        break;
                    case 3:
                        verviaturas(ref viaturas);
                        break;
                    case 4:
                        procviatura(ref viaturas);
                        break;
                    case 0:
                        Console.WriteLine("Prima qualquer tecla para sair");
                        Console.ReadKey();
                        break;
                    default:
                        Console.WriteLine("Opcao invalida");
                        break;
                }
            } while (opcao != 0);

        }

        static void addviatura(ref string[] viaturas)  //funcao para add uma viatura
        {

            if (viaturas.Length < 100)
            {

                Console.Write("Matricula do carro a adicionar: ");
                string temp = Console.ReadLine();

                if (!string.IsNullOrEmpty(temp))
                {
                    Array.Resize(ref viaturas, viaturas.Length + 1);
                    viaturas[viaturas.Length - 1] = temp;
                }
                else
                {
                    return;
                }

            }
            else
            {
                Console.Write("Nao pode adicionar mais viaturas");
                Console.ReadKey();
                Console.Clear();
            }
            

        }

        static void verviaturas(ref string[] viaturas) //funcao para ver as viaturas
        {
            Console.WriteLine("Lista de viaturas");
            foreach (var viatura in viaturas)
            {                
                Console.WriteLine("{0}",viatura);
            }
            Console.Write("Total de carros: {0}", viaturas.Length);
            Console.ReadKey();
            Console.Clear();
        }

        static void procviatura(ref string[] viaturas)
        {

            Console.Write("Matricula do carro a procurar: ");
            string temp = Console.ReadLine();

            if (!string.IsNullOrEmpty(temp))
            {
                foreach (var viatura in viaturas)
                {
                    if (viatura == temp)
                    {
                        Console.Write("A viatura esta no campus");
                        Console.ReadKey();
                        Console.Clear();
                    }
                }
            }
            return;
        } //funcao que procura se a viatura esta no campus

        static void apagarviatura(ref string[] viaturas)
        {

            Console.Write("Matricula do carro a procurar: ");
            string temp = Console.ReadLine();

            if (!string.IsNullOrEmpty(temp))
            {
                for (int i = 0; i < viaturas.Length; i++)
                {
                    if (viaturas[i] == temp)
                    {
                        Console.Write("Viatura encontrada ... a apagar");
                        viaturas[i] = "";
                        Array.Reverse(viaturas);
                        for (int j = 0; j < viaturas.Length; j++)
                        {

                            Console.WriteLine("{0}", viaturas[j]);

                        }                        
                        Array.Resize(ref viaturas,viaturas.Length-1);
                        Console.ReadKey();
                        Console.Clear();
                    }
                }

            }

        } //Funcao que apaga a viatura que procura
    }
}
