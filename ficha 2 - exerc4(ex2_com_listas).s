using System;
using System.Collections;
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
            ArrayList viaturas = new ArrayList();
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
                        addviatura(viaturas);
                        break;
                    case 2:
                        apagarviatura(viaturas);
                        break;
                    case 3:
                        verviaturas(viaturas);
                        break;
                    case 4:
                        procviatura(viaturas);
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

        static void addviatura(ArrayList viaturas)  //funcao para add uma viatura
        {

            if (viaturas.Count < 100)
            {

                Console.Write("Matricula do carro a adicionar: ");
                string temp = Console.ReadLine();

                if (!string.IsNullOrEmpty(temp))
                {
                    if (!viaturas.Contains(temp))
                    {
                        viaturas.Add(temp);
                        Console.Write("Viatura adicionada ao campus com secesso");
                        Console.ReadKey();
                        Console.Clear();
                    }
                    else
                    {
                        Console.WriteLine("Ja existe uma viatura com a matricula no campus");
                        Console.ReadKey();
                        Console.Clear();
                    }
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

        static void verviaturas(ArrayList viaturas) //funcao para ver as viaturas
        {
            Console.WriteLine("Lista de viaturas");
            foreach (var viatura in viaturas)
            {
                Console.WriteLine("{0}", viatura);
            }
            Console.Write("Total de carros: {0}", viaturas.Count);
            Console.ReadKey();
            Console.Clear();
        }

        static void procviatura(ArrayList viaturas)
        {

            Console.Write("Matricula do carro a procurar: ");
            string temp = Console.ReadLine();

            if (!string.IsNullOrEmpty(temp))
            {
                foreach (string viatura in viaturas)
                {
                    if (viatura == temp)
                    {
                        Console.Write("A viatura esta no campus");
                        Console.ReadKey();
                        Console.Clear();
                        return;
                    }
                }
                Console.Write("A viatura nao esta no campus");
                Console.ReadKey();
                Console.Clear();
            }
            return;
        } //funcao que procura se a viatura esta no campus

        static void apagarviatura(ArrayList viaturas)
        {

            Console.Write("Matricula do carro a procurar: ");
            string temp = Console.ReadLine();

            if (!string.IsNullOrEmpty(temp))
            {
                for (int i = 0; i < viaturas.Count; i++)
                {
                    if ((string) viaturas[i] == temp)
                    {
                        Console.Write("Viatura encontrada ... a apagar");
                        viaturas.Remove(temp);
                        for (int j = 0; j < viaturas.Count; j++)
                        {

                            Console.WriteLine("{0}", j);

                        }
                        viaturas.Remove(temp);
                        Console.ReadKey();
                        Console.Clear();
                    }
                }

            }

        } //Funcao que apaga a viatura que procura
    }
}
