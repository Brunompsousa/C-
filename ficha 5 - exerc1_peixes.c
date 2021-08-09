using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ficha5exer1
{
    class Peixes
    {

        //random para uso nos peixes
        Random rnd = new Random();

        string[] nomes = new string[] { "Matt", "Joanne", "Robert", "Bogomir", "Madelina", "Helga", "Włodzimierz", "Marianna" };
        string[] cores = new string[] { "Lavender", "White", "Black", "Dark Magenta", "Cornflower Blue", "Green Yellow", "Lime", "Pink" };


        //constituicao do peixe
        private string nome;
        private string cor;
        private decimal peso;
        private int n_serie;
        private Coordenadas cords_peixe;

        /*
         * numero de serie dos peixes static, para que nao seja criada sempre que criamos 1 peixe
         *  Iniciamos a variavel a 1 para que o numero de serie seja 1 para o primeiro peixe
         * 
         */
        private static int num_serie_peixe = 1;

        


        //construtor do peixes
        public Peixes(int x, int y)
        {
            this.nome = nomes[rnd.Next(0,nomes.Length)];
            this.cor = cores[rnd.Next(0, cores.Length)];
            this.peso = rnd.Next(0, 100);
            this.n_serie = num_serie_peixe;
            cords_peixe = new Coordenadas(x,y);

            num_serie_peixe++; //incrementamos o numero de serie para o proximo peixe que formos criar
        }


        /*
         * funcao que verifica se o peixe existe
         *   Se existir mostranos a informacao do mesmo
         */

        public void verinfo(int n_peixe)
        {
                if (n_serie == n_peixe)
                {
                    Console.WriteLine("Nome: {0}", nome);
                    Console.WriteLine("Cor: {0}", cor);
                    Console.WriteLine("Peso: {0}", peso);
                    Console.WriteLine("Numero Serie: {0}", n_serie);
                    cords_peixe.ver_cord();
                }
                else
                {
                    Console.WriteLine("Nao existe nenhum peixe com o numero de serie que inseriu");
                }
        }

        //mostra a informacao de todos os peixes
        public void verinfo_all()
        {        
                Console.WriteLine("Nome: {0}", nome);
                Console.WriteLine("Cor: {0}", cor);
                Console.WriteLine("Peso: {0}g", peso);
                Console.WriteLine("Numero Serie: {0}", n_serie);
                cords_peixe.ver_cord();

        }

        //funcao que aumenta o peso ao aliemtar o peixe, por metade da quantidade de comida dada
        public void alimentar_peixe(decimal alimento)
        {
            
            peso += (alimento / 2);
            Console.WriteLine("O peixe foi alimentado com sucesso");

        }

        //funcao que aumenta o peso ao aliemtar dos peixes, por metade da quantidade de comida dada

        public void alimentar_todos(decimal alimento)
        {
            peso += (alimento / 2);
        }

        /*funcao que verifica se o peixe em questao tem o numero de serie igual ao que queremos apagar.
         *      Caso tenho o numero igual
         *          enviamos true
         *      Senao  
         *          enviamos false
         */
        public bool apagapeixe(int nserie)
        {
            if(n_serie == nserie)
            return true;

            else
            return false;
        }

    }
}
