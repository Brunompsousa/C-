using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ficha4exer3
{

    class Euromilhoes
    {
        //descricao do euromilhoes
        private List<int> numeros;
        private List<int> estrelas;

        /*
        //Criar euromilhoes sem nada
        public Euromilhoes()
        {
            numeros = new List<int>();
            estrelas = new List<int>();
        }
        */

        public void setnumero(int numero) 
        {
            if (numeros.Count < 5)
            {
                numeros.Add(numero);
            }
            else
            {
                Console.WriteLine("Nao pode adicionar mais numeros");
            }
        }

        public void setestrela(int estrela)
        {
            if(estrelas.Count < 2)
            {
                estrelas.Add(estrela);
            }
            else
            {
                Console.WriteLine("Nao pode adicionar mais estrelas");
            }
        }
        

        public void delnum(int numremov)
        {

            numeros.Remove(numremov);

        }

        public void delest(int delestre)
        {

            estrelas.Remove(delestre);

        }




        //Criar euromilhoes com valores introduzidos logo pelo utilizador
        public Euromilhoes(List<int> numeros_,List<int> estrelas_)
        {
            //cria as listas e mete os valores que vêm do main para dentro destas

            numeros = new List<int>(numeros_);  
            estrelas = new List<int>(estrelas_); 


        }


        public Euromilhoes(int[] numeros_, int[] estrelas_) //construtor por array
        {
            //copiar do array para uma lista
            numeros = new List<int>();
            numeros = numeros_.ToList();

            estrelas = new List<int>();
            estrelas = estrelas_.ToList();

        }

        public void mostrachave()  //imprime a chave que o utilizador deu
        {
            for (int i = 0; i < numeros.Count; i++)
            {
                Console.WriteLine("{0}", numeros[i]);
            }

            for (int i = 0; i < estrelas.Count; i++)
            {
                Console.WriteLine("{0}", estrelas[i]);
            }
        }

        /*funcao de verificacao de apostas

        contas os elementos que sao iguais

        se numiguais = 5 e estrelasiguais = 2
        1premio

        senao se numiguais = 5 e estrelasiguais = 1
        2premio

        senao se numiguais = 5 e estrelasiguais = 0
        3premio

        senao nao ganhou nenhum dos 3 primeiros premios

        */

        
        /*Funcao para queriar uma chave
         * fazemos um new euromilhoes chave2
         * pedimos os valores ou damos os valores 
         * 
         * comparamos e vemos se sao iguais
         */


    }


    class Program
    {

        static void Main(string[] args)
        {
            string dados;
            Boolean verify;
            int opcao;

            //arrays para o construtor
            int[] numeros = new int[4];
            int[] estrelas = new int[1];

            Console.WriteLine("Bem vindo, por fazer insira os numeros da sua aposta");

            numeros = Chnumeros();      //chama a funcao que devolve o array dos numeros
            estrelas = Chestrelas();    //chama a funcao que devolve o array das estrelas

            Euromilhoes chaveutilz = new Euromilhoes(numeros, estrelas); //cria a chave com os arrays

            do
            {
                do
                {
                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - Chave sem valores (desativada)");
                    Console.WriteLine("2 - Criar chave com os valores do utilizador (desativada)");
                    Console.WriteLine("3 - Remover 1 numero");
                    Console.WriteLine("4 - Remover 1 estrela");
                    Console.WriteLine("5 - Add 1 numero");
                    Console.WriteLine("6 - Add 1 estrela");
                    Console.WriteLine("7 - Mostra chave");
                    Console.WriteLine("0 - Sair");
                    Console.Write("--> ");
                    dados = Console.ReadLine();
                    verify = int.TryParse(dados, out opcao);

                } while (!verify);

                switch (opcao)
                {
                    case 1:  // add num a num para a lista da class
                        /*
                        Euromilhoes chavevazia = new Euromilhoes();

                        for (int i = 0; i < 5; i++)
                        {
                            Console.WriteLine("numero {0}/5?",i+1);
                            int num = int.Parse(Console.ReadLine());

                            chavevazia.setnumero(num);

                        }

                        for (int i = 0; i < 2; i++)
                        {
                            Console.WriteLine("numero {0}/2?", i + 1);
                            int est = int.Parse(Console.ReadLine());

                            chavevazia.setestrela(est);

                        }

                        chavevazia.mostrachave();
                        */
                        Console.WriteLine("Esta opcao esta desativada");
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 2: //Usa o construtor de array e passa os valores para listas.
                        /*
                        numeros = Chnumeros();      //chama a funcao que devolve o array dos numeros
                        estrelas = Chestrelas();    //chama a funcao que devolve o array das estrelas

                        Euromilhoes chaveutilz = new Euromilhoes(numeros, estrelas); //cria a chave com os arrays

                        chaveutilz.mostrachave(); // mostra a chave que o utilizador criou a partir desde metodo
                        */
                        Console.WriteLine("Esta opcao esta desativada");
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 3: //remover 1 numero da chave

                        Console.WriteLine("numeros da chave:?");

                        for (int i = 0; i < 5; i++)
                        {
                            Console.WriteLine("{0}", numeros[i]);
                        }

                        Console.WriteLine("numero a remover?");

                        int numaremover = int.Parse(Console.ReadLine());

                        chaveutilz.delnum(numaremover);

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 4: //remover 1 estrela da chave

                        Console.WriteLine("numeros da chave:?");

                        for (int i = 0; i < 2; i++)
                        {
                            Console.WriteLine("{0}", estrelas[i]);
                        }

                        Console.WriteLine("estrela a remover?");

                        int estrelaremover = int.Parse(Console.ReadLine());

                        chaveutilz.delest(estrelaremover);

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 5:

                        Console.WriteLine("insira o numero que quer add");
                        int nume = int.Parse(Console.ReadLine());
                        chaveutilz.setnumero(nume);

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 6:

                        Console.WriteLine("insira a estrela que quer add");
                        int estre = int.Parse(Console.ReadLine());
                        chaveutilz.setestrela(estre);

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 7:

                        chaveutilz.mostrachave();

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

        static int[] Chnumeros() //receber os numeros do utilizador para array e devolve o array
        {
            int i = 0;
            int[] numeros = new int[5];

            do
            {
                Console.Write("numeros {0}/5", i + 1);
                numeros[i] = int.Parse(Console.ReadLine());
                i++;

            } while (i < 5);

            return numeros;
        }

        static int[] Chestrelas() //receber as estrelas do utilizador para array e devolve o array
        {
            int i = 0;
            int[] estrelas = new int[2];

            do
            {
                Console.Write("numeros {0}/2", i + 1);
                estrelas[i] = int.Parse(Console.ReadLine());
                i++;

            } while (i < 2);

            return estrelas;
        }

    }
}
