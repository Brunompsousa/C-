using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using exerc5f4;

namespace ficha4exer4
{


    class Program
    {
        static void Main(string[] args)
        {

            //variaveis para o menu
            Boolean verify;
            int opcao, opcao1;
            string dados;
            int nconta = 0;


            //criacao de um banco para teste
            Banco banco1 = new Banco("BES", 3);

            int numcontasTotal = banco1.acede_conta();

            /*Menu para que introduza o numero da conta
             * e assim trabalhe com a conta que quer
             * 
             * dps e substituir o 0 nas conta[0], por i para que ande na conta que seleciono.
             * 
             * add opcao no menu para sair da conta e voltar a introduzir o numero da conta a que quer aceder
            */

            do
            {

                do //menu do banco
                {

                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - Aceder ao menu da conta");
                    Console.WriteLine("2 - Informacao de conta");
                    Console.WriteLine("3 - "); //crair nova conta
                    Console.WriteLine("4 - "); //apagar conta 
                    Console.WriteLine("5 - Valor total em banco"); //total do valor nas contas do banco
                    Console.WriteLine("6 - Numero de contas Existentes");
                    Console.WriteLine("0 - Sair");
                    Console.Write("--> ");
                    dados = Console.ReadLine();
                    verify = int.TryParse(dados, out opcao1);

                } while (!verify);

                switch (opcao1)
                {
                    case 1:
                        Console.WriteLine("Numero da conta a que quer aceder");
                        nconta = int.Parse(Console.ReadLine());
                        nconta--;

                        if (nconta >= 0 && nconta < numcontasTotal)
                        {
                            Console.Clear();
                            do
                            {
                                do //menu da conta
                                {
                                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                                    Console.WriteLine("1 - Levantar Dinheiro");
                                    Console.WriteLine("2 - Depositar Dinheiro");
                                    Console.WriteLine("3 - Transferir Dinheiro"); //fazer a funcao
                                    Console.WriteLine("4 - Ver saldo");
                                    Console.WriteLine("5 - Ver numero da conta");
                                    Console.WriteLine("6 - Ver nome do cliente");
                                    Console.WriteLine("7 - Ver estado da conta");
                                    Console.WriteLine("0 - Sair/Voltar ao menu do banco");
                                    Console.Write("--> ");
                                    dados = Console.ReadLine();
                                    verify = int.TryParse(dados, out opcao);

                                } while (!verify);

                                switch (opcao)
                                {
                                    case 1: //levantamento

                                        Console.WriteLine("Valor que deseja levantar");
                                        float valorlevantamento = float.Parse(Console.ReadLine());

                                        banco1.Levantamento(nconta, valorlevantamento);

                                        Console.ReadKey();
                                        Console.Clear();
                                        break;

                                    case 2: //deposito

                                        Console.WriteLine("Valor que deseja levantar");
                                        float valordeposito = float.Parse(Console.ReadLine());

                                        banco1.Deposito(nconta, valordeposito);

                                        Console.ReadKey();
                                        Console.Clear();
                                        break;

                                    case 3: //transferencia


                                        //utilizador da o numero da conta destino

                                        //transferencia_(nconta,int costa_destino)

                                        Console.ReadKey();
                                        Console.Clear();
                                        break;

                                    case 4: //ver saldo

                                        banco1.Versaldo(nconta);

                                        Console.ReadKey();
                                        Console.Clear();
                                        break;

                                    case 5: //ver numero da conta

                                        banco1.Vernum(nconta);

                                        Console.ReadKey();
                                        Console.Clear();
                                        break;

                                    case 6: //ver nome do cliente

                                        banco1.Vernome(nconta);

                                        Console.ReadKey();
                                        Console.Clear();
                                        break;

                                    case 7: //ver estado da conta

                                        banco1.Verestado(nconta);

                                        Console.ReadKey();
                                        Console.Clear();
                                        break;

                                    case 0:
                                        Console.Clear();
                                        break;

                                    default:
                                        Console.WriteLine("Opcao invalida");
                                        break;
                                }
                            } while (opcao != 0);
                        }

                        else
                        {
                            Console.WriteLine("conta inexistente");
                        }
                        break;

                    case 2:
                        Console.WriteLine("Numero da conta de que quer ver informacao");
                        nconta = int.Parse(Console.ReadLine());
                        nconta--;

                        banco1.dados_conta(nconta);


                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 5:
                        
                        banco1.valor_banco();

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 6:
                        Console.WriteLine("\nExistem {0} Contas", numcontasTotal);
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
            } while (opcao1 != 0);
        }
    }
}
