using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Ex4
{
    class Program
    {
        // static por causa da thread

        static Random rnd = new Random();
        static Aquario meuAquario = null;

        static void Main(string[] args)
        {
            String[] nomes = { "Esteves", "Herman", "Sofia", "André", "Luís", "Tó", "Pedro", "Ana" };
            String[] cores = { "Preto", "Branco", "Azul", "Cinzento", "Amarelo", "Vermelho", "Roxo" };

            Thread t = new Thread(Nadar);

            int res = 0;
            do
            {
                Console.Clear();
                Console.WriteLine("1 - Criar aquario");
                Console.WriteLine("2 - Adicionar peixe ao Aquário");
                Console.WriteLine("3 - Apagar peixe do Aquário");
                Console.WriteLine("4 - Alimentar peixes");
                Console.WriteLine("5 - Abanar aquário");
                Console.WriteLine("6 - Informações do aquário");
                Console.WriteLine("7 - Sair");
                Int32.TryParse(Console.ReadLine(), out res);
                switch (res)
                {
                    case 1:
                        Console.Clear();
                        Console.WriteLine("Criar aquario");
                        meuAquario = new Aquario(20, 340, 100);
                        Console.WriteLine("Aquario criado!");
                        t.Start();     // já criei o aquario vou lançar a thread para correr em background
                        Console.ReadLine();
                        break;
                    case 2:
                        Console.Clear();
                        Console.WriteLine("Adicionar Peixe ao Aquário");
                        if (meuAquario == null)
                        {
                            Console.WriteLine("Ainda não existe aquario!");
                        }
                        else
                        {
                            /*
                             * 
                             *      Alterar de modo a permitir adicionar peixes de uma determinada espécie
                             *  
                             */
                            Peixe aux = new Peixe(nomes[rnd.Next(0, nomes.Length - 1)], cores[rnd.Next(0, cores.Length - 1)], rnd.Next(50, 200));
                            if (meuAquario.AddPeixe(aux))
                            {
                                Console.WriteLine("Peixe adicionado com sucesso!");
                            }
                            else
                            {
                                Console.WriteLine("Peixe não foi adicionado!");
                            }
                        }
                        Console.ReadLine();
                        break;
                    case 3:
                        Console.Clear();
                        Console.WriteLine("Apagar peixe do Aquário");
                        Console.Write("Introduza o número de serie: ");
                        int sn = 0;
                        Int32.TryParse(Console.ReadLine(), out sn);
                        if (meuAquario.DelPeixe(sn))
                        {
                            Console.WriteLine("Peixe apagado com sucesso!");
                        }
                        else
                        {
                            Console.WriteLine("Peixe apagado com sucesso!");
                        }
                        Console.ReadLine();
                        break;
                    case 4:
                        Console.Clear();
                        Console.WriteLine("Alimentar peixes");
                        int quantidade = rnd.Next(15, 30);
                        meuAquario.Alimentar(quantidade);
                        Console.WriteLine("Peixes alimentados com " + quantidade + "g de alimento.");
                        Console.ReadLine();
                        break;
                    case 5:
                        Console.Clear();
                        Console.WriteLine("Abanar aquário");
                        meuAquario.Abana();
                        Console.WriteLine("Aquario abanado!");
                        Console.ReadLine();
                        break;
                    case 6:
                        Console.Clear();
                        Console.WriteLine("Informações do aquário");
                        Console.WriteLine(meuAquario.ToString());
                        Console.ReadLine();
                        break;
                    default:
                        break;
                }


            } while (res != 7);


            Console.ReadKey();
        }

        static void Nadar()
        {
            try
            {
                while (true)
                {
                    if (meuAquario != null)
                    {
                        meuAquario.Alimentar(rnd.Next(10,50));
                    }
                    Thread.Sleep(5000);
                }
            }
            catch (Exception)
            {
            }
        }
    }
}
