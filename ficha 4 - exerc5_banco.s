using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exerc5f4
{
    class Banco
    {
        private string _nome;
        private List<Contabancaria> _contas = new List<Contabancaria>();

        /*Funcao que cria o banco e dentro dele cria contas bancarias conforme o numero de contas que queremos
            * estas contas comecam na conta 1
            */

        public Banco(string nomebanco, int numcontas)
        {
            _nome = nomebanco;
            for (int i = 1; i <= numcontas; i++)
            {
                _contas.Add(new Contabancaria(i));
            }
        }

        public void Addconta()
        {
            int proxconta = _contas.Count;
            _contas.Add(new Contabancaria(proxconta+1));
        }

        public void ativ_desactive(int nconta,int valorEstado)
        {        
            _contas[nconta].alt_estado(valorEstado);                
        }

        public void Levantamento(int nconta,float valor)
        {
            _contas[nconta].Levantamento(valor);
        }

        public void Deposito(int nconta, float valor)
        {
            _contas[nconta].Deposito(valor);
        }

        public void Versaldo(int nconta)
        {
            _contas[nconta].Versaldo();
        }

        public void Vernum(int nconta)
        {
            _contas[nconta].Vernumero();
        }

        public void Vernome(int nconta)
        {
            _contas[nconta].Vernome();
        }

        public int acede_conta()
        {
            int numeroContas = _contas.Count;
            return numeroContas;
        }

        public void dados_conta(int nconta)
        {
            _contas[nconta].Vernome();
            _contas[nconta].Vernumero();
            _contas[nconta].Versaldo();
            _contas[nconta].Verestado();

        }

        public void Verestado(int nconta)
        {
            _contas[nconta].Verestado();

        }

        //funcao para criar conta

        //funcao para apagar conta

        //resumo do valor no banco
        public void valor_banco()
        {
            float valor_total=0;

            foreach (var conta in _contas)
            {
                valor_total += conta.totalcontas() ;
            }

            Console.WriteLine("O valor total no banco e {0}", valor_total);

        }


    }
}
