using System;
using System.Collections.Generic;
using System.Threading;

namespace ficha5exer1
{
    public class Aquario
    {
        //constituicao do aquario
        private int max_peixes;
        private int cord_x;
        private int cord_y;
        private List<Peixes> peixes = new List<Peixes>();

        //criacao do objecto para usar na obtencao dos numeroes aleatorios
        Random rnd = new Random();


        //Construtor do aquario
        public Aquario(int maxpeixes, int x, int y)
        {
            max_peixes = maxpeixes;
            cord_x = x;
            cord_y = y;
        }

        //funcao para criar o peixe, coordenadas random
        public void criar_peixe()
        {
            int x = rnd.Next(0, cord_x);
            int y = rnd.Next(0, cord_y);
            peixes.Add(new Peixes(x, y));

            Console.WriteLine("\nPeixe criado com sucesso");
        }


        //funcao para ver as informacoes do peixe
        public void verinformacao(int n_peixe)
        {
            int indice = n_peixe-1;
            peixes[indice].verinfo(n_peixe);
        }


        //funcao para ver as informacoes dos peixes todos
        public void verinformacao_all()
        {
            Console.Clear();

            for (int i = 0; i < peixes.Count; i++)
            {
                Console.WriteLine("Peixe ({0}/{1})\n",i+1,peixes.Count);

                peixes[i].verinfo_all();
                if ((i+1)!=peixes.Count)
                {
                    Console.WriteLine("\nProximo Peixe");
                    Console.ReadKey();
                    Console.Clear();
                }
                else
                {
                    Console.WriteLine("\nFim da Lista");
                }
            }       
            
        }

        //funcao para alimentar 1 peixe, dado o numero de serie e as gramas de comida pelo o utilizador
        public void alimentar_1(int nserie)
        {

            if (nserie <= peixes.Count)
            {
                Console.Write("Gramas de comida que quer dar ao peixe:");
                decimal gramas = decimal.Parse(Console.ReadLine());

                nserie--;

                peixes[nserie].alimentar_peixe(gramas);
            }
            else
            {
                Console.Write("Peixe pedido nao existe");
            }
            
        }


        //funcao que alimenta todos os peixes com o numero de gramas de comida dados pelo utilizador
        public void alimentar_todos()
        {

            Console.Write("Gramas de comida que quer dar a todos os peixes:");
            decimal gramas = decimal.Parse(Console.ReadLine());

            foreach (var peixe in peixes)
            {

                peixe.alimentar_todos(gramas);

            }

            Console.WriteLine("Os peixes foram alimentado com sucesso");

        }

        //funcao que apaga um peixe dado o numero de serie pelo utilizador
        /*
         * Corre a lista e chama a funcao remove, para verificar se qual o peixe que corresponde ao numero dado
         * e entao apaga-lo da lista de peixes.
         */
        public bool delpeixe(int nserie)
        {
            foreach (var peixe in peixes)
            {
                if (peixe.apagapeixe(nserie)==true)
                {
                    peixes.Remove(peixe);
                    return true;
                }
            }
            return false;
        }



        /*
         * abanar os peixes e reduzir o peso
         * caso o peso fique menos que 10
         * guardar o peixe numa lista (peixestemp)
         * 
         * correr a lista temp, e remover da lista dos peixes os peixes da temp
         * 
         * peixes remove peixe_da_lista_temp
         * 
         * pois assim nao corremos a lista dos peixes, o que faz com que o ponteiro nao tenho problemas
         * na localizacao da memoria
         * 
         * no fim, limpamos a lista temp .removeall()
         * 
         */
    }
}