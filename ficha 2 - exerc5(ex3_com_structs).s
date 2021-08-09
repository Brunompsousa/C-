using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace F2exercicio1
{
    static class Program
    {
        struct ApostaEuro
        {
            public List<int> numeros;
            public List<int> estrelas;
            public string cidade;
            public int vendedor;
        }

        static void Main(string[] args)
        {
            /*
             * Iniciacao das variaveis
             */
            ApostaEuro Aposta = new ApostaEuro(); //Struct da aposta mais listas
            Aposta.numeros=new List<int>();
            Aposta.estrelas = new List<int>();

            ApostaEuro ChaveP = new ApostaEuro(); //Struct da Chavepremiada mais listas
            ChaveP.numeros = new List<int>();
            ChaveP.estrelas = new List<int>();

            int opcao;
            int sair = 1;
            Boolean verify;

            do
            {

                do
                {
                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - Introduzir Chave Premiada");
                    Console.WriteLine("2 - Introduzir Chave de Aposta");
                    Console.WriteLine("3 - Alterar a Chave de Aposta");
                    Console.WriteLine("4 - Verificar a Chave Premiada");
                    Console.WriteLine("5 - Verificar a Chave de Aposta");
                    Console.WriteLine("6 - Comparar Chave apostar e Chave Premiada");
                    Console.WriteLine("0 - Sair do Programa");
                    Console.WriteLine("--> ");
                    string dados = Console.ReadLine();
                    verify = int.TryParse(dados, out opcao);
                    Console.Clear();

                } while (!verify);

                switch (opcao)
                {
                    case 1:
                        chavepremiada(ref ChaveP);
                        break;
                    case 2:
                        Chaveaposta(ref Aposta);
                        break;
                    case 3:
                        Aposta.numeros.Clear();
                        Aposta.estrelas.Clear();
                        Chaveaposta(ref Aposta);
                        break;

                    case 4:
                        verChavepremiada(ref ChaveP);
                        break;

                    case 5:
                        verchaveaposta(ref Aposta);
                        break;

                    case 6:
                        compararchaves(ref Aposta, ref ChaveP);
                        break;
                    case 0:
                        sair = 0;
                        break;

                    default:
                        Console.WriteLine(
                            "A opcao introduzida nao e valida!\n\nPrima Qualquer tecla para voltar a tentar");
                        break;

                }
            } while (sair != 0);
        }


        static void chavepremiada(ref ApostaEuro ChaveP)
        {
            Boolean verify;

            /*
            * 'FOR' usado para pedir os 5 numeros da chave
            */

            for (int i = 0; i < 5; i++)
            {
                do
                {
                    Console.WriteLine("Introduza os numeros da sua aposta");

                    Console.Write("Numero ({0}/5): ", i + 1);
                    string dados = Console.ReadLine();
                    int temp;
                    verify = int.TryParse(dados, out temp);

                    if (temp < 1 || temp > 50 || ChaveP.numeros.Contains(temp) == true)
                    {
                        verify = false;
                    }
                    else
                    {
                        ChaveP.numeros.Add(temp);
                    }

                    /*
                     * O codigo a cima verifica se o numero introduzido esta entre o intervalo que se quer ou 
                     * se ja foi introduzido, caso uma destas comparacoes seja verdadeira, o numero nao e valido.
                     * 
                     * Se todas as comparacoes foram falsas quer dizer que temos um numero valido
                     * Depois da verificacao do numero, guardamos o numero no array
                     * 
                     * QUESTAO: Porque o int temp? e nao meter o numero para o array?
                     * 
                     * RESPOSTA: A razão e porque caso guardassemos o numero no array imediatamente, o nosso array.indexof
                     * iria depois comparar o numero que obtivemos com o array, no entanto o numero que recebemos
                     * ja se encontra no array, o que faria com que fosse dito que esse numero ja estava repetido.
                     * 
                     * Assim com o temp, garantimos que o numero nao esta no array
                     * a nao ser que o numero seja mesmo uma repeticao
                     */

                    Console.Clear();

                } while (!verify);
            }

            /*
             * 'FOR' usado para pedir as 2 estrelas da chave
             */

            for (int i = 0; i < 2; i++)
            {
                do
                {
                    int temp;
                    Console.Write("Estrela ({0}/2): ", i + 1);
                    string dados = Console.ReadLine();
                    verify = int.TryParse(dados, out temp);
                    ChaveP.estrelas.Add(temp);

                    if (ChaveP.estrelas[i] < 1 || ChaveP.estrelas[i] > 11)
                    {
                        verify = false;
                    }
                    if (ChaveP.estrelas.Count != 1)
                    {
                        if (ChaveP.estrelas[i] < 1 || ChaveP.estrelas[i] > 11 || ChaveP.estrelas[0] == ChaveP.estrelas[1])
                        {
                            verify = false;
                        }
                    }
                    /*
                     * Verificamos se o numero esta entre o intervalo valido
                     * e tambem verificamos se nao sao iguais, visto que apenas temos 2 valores
                     */

                    Console.Clear();

                } while (!verify);

            }

            ChaveP.numeros.Sort(); // Ordena os numeros por ordem crescente no array
            ChaveP.estrelas.Sort(); // Ordena as estrelas por ordem crescente no array

            Console.WriteLine("A chave introduzida foi");
            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {

                Console.Write(" {0}", ChaveP.numeros[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", ChaveP.estrelas[i]);
            }

            Console.ReadKey();
            Console.Clear();


        }

        static void Chaveaposta(ref ApostaEuro Aposta)
        {
            Boolean verify;
            /*
             * 'FOR' usado para pedir os 5 numeros da chave
             */

            for (int i = 0; i < 5; i++)
            {
                do
                {
                    Console.WriteLine("Introduza os numeros da sua aposta");

                    Console.Write("Numero ({0}/5): ", i + 1);
                    string dados = Console.ReadLine();
                    int temp;
                    verify = int.TryParse(dados, out temp);

                    if (temp < 1 || temp > 50 || Aposta.numeros.Contains(temp) == true)
                    {
                        verify = false;
                    }
                    else
                    {
                        Aposta.numeros.Add(temp);
                    }

                    /*
                     * O codigo a cima verifica se o numero introduzido esta entre o intervalo que se quer ou 
                     * se ja foi introduzido, caso uma destas comparacoes seja verdadeira, o numero nao e valido.
                     * 
                     * Se todas as comparacoes foram falsas quer dizer que temos um numero valido
                     * Depois da verificacao do numero, guardamos o numero no array
                     * 
                     * QUESTAO: Porque o int temp? e nao meter o numero para o array?
                     * 
                     * RESPOSTA: A razão e porque caso guardassemos o numero no array imediatamente, o nosso array.indexof
                     * iria depois comparar o numero que obtivemos com o array, no entanto o numero que recebemos
                     * ja se encontra no array, o que faria com que fosse dito que esse numero ja estava repetido.
                     * 
                     * Assim com o temp, garantimos que o numero nao esta no array
                     * a nao ser que o numero seja mesmo uma repeticao
                     */

                    Console.Clear();

                } while (!verify);
            }

            /*
             * 'FOR' usado para pedir as 2 estrelas da chave
             */

            for (int i = 0; i < 2; i++)
            {
                do
                {
                    int temp;
                    Console.Write("Estrela ({0}/2): ", i + 1);
                    string dados = Console.ReadLine();
                    verify = int.TryParse(dados, out temp);
                    Aposta.estrelas.Add(temp);

                    if (Aposta.estrelas[i] < 1 || Aposta.estrelas[i] > 11)
                    {
                        verify = false;
                    }
                    if (Aposta.estrelas.Count != 1)
                    {
                        if (Aposta.estrelas[i] < 1 || Aposta.estrelas[i] > 11 || Aposta.estrelas[0] == Aposta.estrelas[1])
                        {
                            verify = false;
                        }
                    }

                    /*
                     * Verificamos se o numero esta entre o intervalo valido
                     * e tambem verificamos se nao sao iguais, visto que apenas temos 2 valores
                     */

                    Console.Clear();

                } while (!verify);

            }

            Console.Write("Cidade de Resgito da Chave: "); // introdução da cidade onde esta a ser registada a chave
            Aposta.cidade = Console.ReadLine();

            Console.Clear();

            do // Introdução e verificação do numero do vendedor 
            {
                Console.Write("Numero do Vendedor: ");
                string dados = Console.ReadLine();
                verify = int.TryParse(dados, out Aposta.vendedor);

                Console.Clear();

            } while (!verify);

            Aposta.numeros.Sort(); // Ordena os numeros por ordem crescente no array
            Aposta.estrelas.Sort(); // Ordena as estrelas por ordem crescente no array

            Console.WriteLine("A chave introduzida foi");
            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {

                Console.Write(" {0}", Aposta.numeros[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", Aposta.estrelas[i]);
            }

            Console.Write("\nCidade do Registo: {0}", Aposta.cidade);

            Console.Write("\nNumero do Vendedor: {0}", Aposta.vendedor);

            Console.ReadKey();
            Console.Clear();

        }

        static void verchaveaposta(ref ApostaEuro Aposta)
        {

            if (Aposta.numeros.Count == 0)
            {
                Console.WriteLine("Tem de introduzir uma Aposta antes de tentar ver");
                Console.ReadKey();
                Console.Clear();
                return;
            }

            Console.WriteLine("A chave introduzida foi");
            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {

                Console.Write(" {0}", Aposta.numeros[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", Aposta.estrelas[i]);
            }

            Console.Write("\nCidade do Registo: {0}", Aposta.cidade);

            Console.Write("\nNumero do Vendedor: {0}", Aposta.vendedor);

            Console.ReadKey();
            Console.Clear();

        }

        static void verChavepremiada(ref ApostaEuro ChaveP)
        {
            if (ChaveP.numeros.Count==0)
            {
                Console.WriteLine("Tem de introduzir uma chave antes de tentar ver");
                Console.ReadKey();
                Console.Clear();
                return;
            }

            Console.WriteLine("A chave introduzida foi");
            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {

                Console.Write(" {0}", ChaveP.numeros[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", ChaveP.estrelas[i]);
            }

            Console.ReadKey();
            Console.Clear();

        }

        static void compararchaves(ref ApostaEuro Aposta, ref ApostaEuro ChaveP)
        {
            Boolean verify = true;

            if (Aposta.numeros.Count == 0 || ChaveP.numeros.Count==0)
            {
                Console.WriteLine("Uma das chaves nao foi introduzida");
                Console.ReadKey();
                Console.Clear();
                return;
            }

            for (int i = 0; i < Aposta.numeros.Count; i++)
            {

                if (ChaveP.numeros.IndexOf(Aposta.numeros[i]) < 0)
                {
                    verify = false;
                }
            }
            for (int i = 0; i < Aposta.estrelas.Count; i++)
            {
                if (ChaveP.estrelas.IndexOf(Aposta.estrelas[i]) < 0)
                {
                    verify = false;
                }
            }

            if (!verify)
            {
                Console.WriteLine("A chave nao foi a premiada");
                Console.ReadKey();
                Console.Clear();
            }
            else
            {
                Console.WriteLine("Parabens ganhou!!!!");
                Console.ReadKey();
                Console.Clear();
            }
        }
    }
}
