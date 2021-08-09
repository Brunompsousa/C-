using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exerc5f4
{
    class Contabancaria
    {
        /*campos da conta bancaria*/
        private int _numeroconta;
        private string _nome;
        private float _saldo;
        private int _estado; /*se esta activa(1) ou desactiva(0)*/

        /*construtor vazio*/
        private Contabancaria()
        {

        }

        /*construtor com inicializacao de numero da conta, nome e saldo inicial*/

        public Contabancaria(int numconta)
        {
            _numeroconta = numconta;
            _estado = 1;
        }

        public Contabancaria(int numconta, string nome_, float saldo_)
        {
            _numeroconta = numconta;
            _nome = nome_;
            _saldo = saldo_;
            _estado = 1;
        }

        /*Depositar dinheiro na conta
         * 
         * Receber o valor do main
         * somas ao saldo da conta
         */
        public void Deposito(float valor)
        {
            float temp = _saldo;
            _saldo += valor;
            Console.WriteLine("Deposito efectuado com sucesso");
            Console.WriteLine("Saldo antes do deposito: {0}", temp);
            Console.WriteLine("Valor do deposito: {0}", valor);
            Console.WriteLine("Saldo após deposito: {0}", _saldo);
        }


        /*Levantar dinheiro da conta
         * 
         * Verificar se a conta tem o valor maior ou igual ao valor que se quer levantar
         * se sim
         *      subtraimos o dinheiro da conta
         * senao
         *      avisamos que nao ha saldo suficiente para a operacao
         */

        public void Levantamento(float valor)
        {
            if (_saldo > valor)
            {
                float temp = _saldo;
                _saldo -= valor;
                Console.WriteLine("Levantamento efectuado com sucesso");
                Console.WriteLine("Saldo antes do levantamento: {0}", temp);
                Console.WriteLine("Valor do levantamento: {0}", valor);
                Console.WriteLine("Saldo após levantamento: {0}", _saldo);
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
        public void Versaldo()
        {
            Console.WriteLine("Saldo da conta: {0}", _saldo);
        }

        /*Consultar numero da conta 
         * 
         * Mostramos o numero da conta  da conta ao utilizador
         * 
         */
        public void Vernumero()
        {
            Console.WriteLine("numero da conta: {0}", _numeroconta);
        }

        public int Contanum()
        {
            return _numeroconta;
        }
        

        /*Consultar nome do cliente
         * 
         * Mostramos o nome do cliente  da conta ao utilizador
         * 
         */
        public void Vernome()
        {
            Console.WriteLine("nome do cliente: {0}", _nome);
        }

        public void alt_estado(int valor)
        {
            _estado = valor;
        }

        public void Verestado()
        {
            if (_estado == 1)
            {
               Console.WriteLine("Estado da conta: Ativa");
            }
            else
            {
                Console.WriteLine("Estado da conta: Desactiva");
            }

        }

        public float totalcontas()
        {
            return _saldo;
        }


    }

}
