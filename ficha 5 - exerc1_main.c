using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ficha5exer1
{
    class Program
    {
        static void Main(string[] args)
        {
            //criacao do aquario para os testes
            Aquario aquario1 = new Aquario(10, 50, 50);


            Boolean verify;
            int opcao;
            string dados;

            do
            {

                do
                {
                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - Criar peixe");
                    Console.WriteLine("2 - Consultar peixe dando o numero de serie");
                    Console.WriteLine("3 - Ver lista de todos os peixes que existem");
                    Console.WriteLine("4 - Alimentar peixe");
                    Console.WriteLine("5 - Alimentar todos os peixes");
                    Console.WriteLine("6 - Remover peixe");
                    Console.WriteLine("7 - ");
                    Console.WriteLine("0 - Sair");
                    Console.WriteLine("--> ");
                    dados = Console.ReadLine();
                    verify = int.TryParse(dados, out opcao);

                } while (!verify);

                switch (opcao)
                {
                    case 1:

                        /*inserir um novo peixe no aquario
                        * 
                        * Pedir dados do peixe
                        * Enviar dados para aquario
                        *      AQUARIO
                        *      - recebe os dados e adiciona as coordenadas do peixe
                        *         PEIXES
                        *         - recebe as informacoes ja com as coordenadas
                        *            COORDENADAS
                        *            - Criacao das coordenadas que foram enviadas para ele, no peixe.
                        * 
                        */

                        Console.Clear();
                        /*
                        Console.Write("nome do peixe:");
                        string nome = Console.ReadLine();

                        Console.Write("cor do peixe:");
                        string cor = Console.ReadLine();

                        Console.Write("peso do peixe:");
                        int peso = int.Parse(Console.ReadLine());
                        */
                        aquario1.criar_peixe();

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 2:

                        /* 
                         * Pedimos ao utilizador o numero de serie do peixe que quer ver a informacao
                         * 
                         * enviamos o numero para o Aquario
                         *  AQUARIO
                         *      envia o numero do peixe para o peixes
                         *          PEIXES
                         *              verifica se existe um peixe com o numero de serie dado
                         *              SIM
                         *                  mostra a informacao do peixe
                         *              NAO
                         *                  Diz ao utilizador que o peixe nao existe
                         */

                        Console.Write("nºserie do peixe:");
                        int n_serie = int.Parse(Console.ReadLine());

                        aquario1.verinformacao(n_serie);

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 3:
                        /*
                         * Mostramos ao utilizador a informacao de todos os peixes que temos no aquario.
                         */
                        aquario1.verinformacao_all();

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 4:

                        Console.Write("nºserie do peixe que quer alimentar:");
                        n_serie = int.Parse(Console.ReadLine());

                        aquario1.alimentar_1(n_serie);

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 5:

                        aquario1.alimentar_todos();

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 6:

                        Console.WriteLine("Qual o numero de serie do peixe que quer apagar?");
                        int nserie = int.Parse(Console.ReadLine());

                        verify = aquario1.delpeixe(nserie);

                        if (!verify)
                        {
                            Console.WriteLine("Nao foi possivel remover o peixe");
                        }
                        else
                        {
                            Console.WriteLine("O peixe foi removido com sucesso");
                        }
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
