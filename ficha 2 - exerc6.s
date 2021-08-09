using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exerc6ficha2v2
{
    class Program
    {
        enum Diasemana      //declaracao da enumaracao para os dias da semana
        {                              
            Domingo = 1,    //Resolução da alinea B é apenas a adição do '= 1' ,resto dos elementos sao numerados consequentemente
            Segunda_feira,  
            Terça_feira,
            Quarta_feira,
            Quinta_feira,
            Sexta_feira,
            Sabado,
        }
        static void Main(string[] args)
        {
            int opcao;
            int sair = 1;
            Boolean verify;

            do
            {

                do
                {
                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - Numero do dia para Extenso");
                    Console.WriteLine("2 - Dia em extenso para numero");
                    Console.WriteLine("0 - Sair do Programa");
                    Console.WriteLine("--> ");
                    string dados = Console.ReadLine();
                    verify = int.TryParse(dados, out opcao);
                    Console.Clear();

                } while (!verify);

                switch (opcao)
                {
                    case 1:
                        Dia_num_to_ext();
                        break;
                    case 2:
                        Dia_ext_to_num();
                        break;
                    case 0:
                        sair = 0;
                        break;

                    default:
                        Console.WriteLine("A opcao introduzida nao e valida!\n\nPrima Qualquer tecla para voltar a tentar");
                        break;

                }
            } while (sair != 0);



        }

        static void Dia_num_to_ext()
        {
            Boolean verify;
            int numero;

            do
            {
                Console.WriteLine("Introduza o numero que quer convertido em dia da semana");
                Console.Write("--> ");
                string dados = Console.ReadLine();
                verify = int.TryParse(dados, out numero);

            } while (!verify);

            if (Enum.IsDefined(typeof(Diasemana), numero) == false)
            {
                Console.Write("INVALIDO");
                Console.ReadKey();
                Console.Clear();
            }
            else
            {
                Console.Write("{0} = {1}", numero, Enum.GetName(typeof(Diasemana), numero));
                Console.ReadKey();
                Console.Clear();
            }                
            
        }


        static void Dia_ext_to_num()
        {

            String dia;
            do
            {

                Console.WriteLine("Introduza o Dia da semana que quer convertido em numero");
                Console.Write("--> ");
                dia = Console.ReadLine();

            } while (dia == null );


            if (Enum.IsDefined(typeof(Diasemana), dia) == false)
            {
                Console.Write("INVALIDO");
                Console.ReadKey();
                Console.Clear();
            }
            else
            {

                Boolean numero = Enum.TryParse(Diasemana, out dia);
            }

        }

    }
}
