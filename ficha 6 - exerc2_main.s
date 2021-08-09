using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ficha6_exec2
{
    class Program
    {
        static void Main(string[] args)
        {
            //Variaveis loja e apartamento
            Imovel[] Imoveis = new Imovel[3];
            Imoveis[0] = new Loja(10);
            Imoveis[1] = new Apartamento(20, "3º");
            Imoveis[2] = new Loja(55);


            //variaveis para o menu
            Boolean verify;
            int opcao;
            string dados;

            do
            {

                do
                {
                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - Procura por codigo");
                    Console.WriteLine("2 - ");
                    Console.WriteLine("3 - ");
                    Console.WriteLine("4 - ");
                    Console.WriteLine("5 - ");
                    Console.WriteLine("6 - ");
                    Console.WriteLine("7 - ");
                    Console.WriteLine("0 - Sair");
                    Console.WriteLine("--> ");
                    dados = Console.ReadLine();
                    verify = int.TryParse(dados, out opcao);

                } while (!verify);

                switch (opcao)
                {
                    case 1: /*Procura imoveis com o codigo igual ao que o utilizador introduz, seja completo ou incompleto*/
                        int list = 0;
                        Console.WriteLine("Codigo a procurar : ");
                        string cod = Console.ReadLine();

                        foreach (var imovel in Imoveis)
                        {
                                                       
                            if (imovel.getcodigo.IndexOf(cod, StringComparison.OrdinalIgnoreCase) >= 0)
                            {
                                imovel.ToString();
                                Console.WriteLine("\n");
                                list++;
                            }
                            
                        }

                        if(list == 0)
                            Console.WriteLine("Não existem imoveis com o codigo introduzido");

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 2:
                        list = 0;
                        Console.WriteLine("Codigo a procurar : ");
                        cod = Console.ReadLine();

                        foreach (var imovel in Imoveis)
                        {

                            if (imovel.getandar.IndexOf(cod, StringComparison.OrdinalIgnoreCase) >= 0)
                            {
                                imovel.ToString();
                                Console.WriteLine("\n");
                                list++;
                            }

                        }

                        if (list == 0)
                            Console.WriteLine("Não existem imoveis com o codigo introduzido");

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 3:

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 4:
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 5:
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 6:
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 7:
                        Console.ReadKey();
                        Console.Clear();
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
    }
}
