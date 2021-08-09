using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ficha4exer4
{

    class Contabancaria
    {
        /*campos da conta bancaria*/
        private int numeroconta;
        private string nome;
        private float saldo;
        private string Estado; /*se esta activa ou desactiva*/

        /*construtor vazio*/
        public Contabancaria()
        {
            
        }

        /*construtor com inicializacao de numero da conta, nome e saldo inicial*/

        public Contabancaria(int numconta_,string nome_, float saldo_)
        {
            numeroconta = numconta_;
            nome = nome_;
            saldo = saldo_;
        }

        /*Depositar dinheiro na conta
         * 
         * Receber o valor do main
         * somas ao saldo da conta
         */

        public void deposito(float valor)
        {
            float temp = saldo;
            saldo += valor;
            Console.WriteLine("Deposito efectuado com sucesso");
            Console.WriteLine("Saldo antes do deposito: {0}", temp);
            Console.WriteLine("Valor do deposito: {0}", valor);
            Console.WriteLine("Saldo após deposito: {0}", saldo);
        }


        /*Levantar dinheiro da conta
         * 
         * Verificar se a conta tem o valor maior ou igual ao valor que se quer levantar
         * se sim
         *      subtraimos o dinheiro da conta
         * senao
         *      avisamos que nao ha saldo suficiente para a operacao
         */

        public void levantamento(float valor)
        {
            if (saldo > valor)
            {
                float temp = saldo;
                saldo -= valor;
                Console.WriteLine("Levantamento efectuado com sucesso");
                Console.WriteLine("Saldo antes do levantamento: {0}",temp);
                Console.WriteLine("Valor do levantamento: {0}", valor);
                Console.WriteLine("Saldo após levantamento: {0}",saldo);
            }
            else
            {
                Console.WriteLine("O Saldo da conta nao permite levantar essse valor");
            }
        }


        /*Transferir dinheiro de uma conta para outra
         * 
         * Verificar se a conta tem o valor maior ou igual ao valor que se quer transferir
         * se sim
         *      pedimos o numero da conta para quem queremos fazer a transferencia
         *      
         *          procuramos a conta para verificar se existe ou nao
         *          
         *          conta[i].numeroconta == valor - para procurar a conta.
         *          
         *              se sim
         *                  subtraimos o dinheiro da conta de origem 
         *                  somamos o valor a conta de destino
         *             se nao
         *                  avisamos que a conta introduzida nao existe
         *                  
         *                  ~~ repetir o passo da conta ~~ (opcional)
         * se nao
         *      avisamos que nao existe saldo na conta
         */


        /*Consultar o saldo 
         * 
         * Mostramos o saldo da conta ao utilizador
         * 
         */
        public void versaldo()
        {
            Console.WriteLine("Saldo da conta: {0}",saldo);
        }

        /*Consultar numero da conta 
         * 
         * Mostramos o numero da conta  da conta ao utilizador
         * 
         */
        public void vernumero()
        {
            Console.WriteLine("numero da conta: {0}", numeroconta);
        }

        /*Consultar nome do cliente
         * 
         * Mostramos o nome do cliente  da conta ao utilizador
         * 
         */
        public void vernome()
        {
            Console.WriteLine("nome do cliente: {0}", nome);
        }

    }

    class Program
    {
        static void Main(string[] args)
        {

            //criacao de uma conta para testes
            Contabancaria[] conta = new Contabancaria[2];
            conta[0] = new Contabancaria(1,"Bruno",200.50f);
            conta[1] = new Contabancaria(2,"Miguel", 100.32f);


            /*Menu para que introduza o numero da conta
             * e assim trabalhe com a conta que quer
             * 
             * dps e substituir o 0 nas conta[0], por i para que ande na conta que seleciono.
             * 
             * add opcao no menu para sair da conta e voltar a introduzir o numero da conta a que quer aceder
             * 
             */


            //variaveis para o menu
            Boolean verify;
            int opcao;
            string dados;

            do
            {

                do
                {
                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - Levantar Dinheiro");
                    Console.WriteLine("2 - Depositar Dinheiro");
                    Console.WriteLine("3 - Transferir Dinheiro");
                    Console.WriteLine("4 - Ver saldo");
                    Console.WriteLine("5 - Ver numero da conta");
                    Console.WriteLine("6 - Ver nome do cliente");
                    Console.WriteLine("0 - Sair");
                    Console.WriteLine("--> ");
                    dados = Console.ReadLine();
                    verify = int.TryParse(dados,out opcao);

                } while (!verify);

                switch (opcao)
                {
                    case 1: //levantamento

                        Console.WriteLine("Valor que deseja levantar");
                        float valorlevantamento = float.Parse(Console.ReadLine());

                        conta[0].levantamento(valorlevantamento);

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 2: //deposito

                        Console.WriteLine("Valor que deseja levantar");
                        float valordeposito = float.Parse(Console.ReadLine());

                        conta[0].deposito(valordeposito);

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 3: //transferencia



                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 4: //ver saldo

                        conta[0].versaldo();

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 5: //ver numero da conta

                        conta[0].vernumero();

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 6: //ver nome do cliente

                        conta[0].vernome();

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
