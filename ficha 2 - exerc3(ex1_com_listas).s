using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace F2exercicio1
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
             * Iniciacao das variaveis
             */
            
            List<int> numeros = new List<int>();
            List<int> estrelas = new List<int>();
            List<int> numerosP = new List<int>();
            List<int> estrelasP = new List<int>();
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
                        chavepremiada(numerosP, estrelasP);
                        break;
                    case 2:
                        Chaveaposta(numeros, estrelas);
                        break;
                    case 3:
                        numeros.Clear();
                        estrelas.Clear();
                        Chaveaposta(numeros, estrelas);
                        break;

                    case 4:
                        verChavepremiada(numerosP, estrelasP);
                        break;

                    case 5:
                        verchaveaposta(numeros, estrelas);
                        break;

                    case 6:
                        compararchaves(numeros, estrelas, numerosP, estrelasP);
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


        static void chavepremiada(List<int> numeros, List<int> estrelas)
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

                    if (temp < 1 || temp > 50 || (numeros.IndexOf(temp)) >= 0)
                    {
                        verify = false;
                    }
                    else
                    {
                        numeros.Add(temp);
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
                    estrelas.Add(temp);

                    if (estrelas[i] < 1 || estrelas[i] > 11)
                    {
                        verify = false;
                    }
                    if (estrelas.Count!=1)
                    {
                        if (estrelas[i] < 1 || estrelas[i] > 11 || estrelas[0] == estrelas[1])
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

            numeros.Sort(); // Ordena os numeros por ordem crescente no array
            estrelas.Sort(); // Ordena as estrelas por ordem crescente no array

            Console.WriteLine("A chave introduzida foi");
            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {

                Console.Write(" {0}", numeros[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", estrelas[i]);
            }

            Console.ReadKey();
            Console.Clear();


        }

        static void Chaveaposta(List<int> numerosP, List<int> estrelasP)
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

                    if (temp < 1 || temp > 50 || (numerosP.IndexOf(temp)) >= 0)
                    {
                        verify = false;
                    }
                    else
                    {
                        numerosP.Add(temp);
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
                    estrelasP.Add(temp);

                    if (estrelasP[i] < 1 || estrelasP[i] > 11)
                    {
                        verify = false;
                    }
                    if (estrelasP.Count != 1)
                    {
                        if (estrelasP[i] < 1 || estrelasP[i] > 11 || estrelasP[0] == estrelasP[1])
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

            numerosP.Sort(); // Ordena os numeros por ordem crescente no array
            estrelasP.Sort(); // Ordena as estrelas por ordem crescente no array

            Console.WriteLine("A chave introduzida foi");
            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {

                Console.Write(" {0}", numerosP[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", estrelasP[i]);
            }

            Console.ReadKey();
            Console.Clear();

        }

        static void verchaveaposta(List<int> numeros, List<int> estrelas)
        {

            Console.WriteLine("A chave introduzida foi");
            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {

                Console.Write(" {0}", numeros[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", estrelas[i]);
            }

            Console.ReadKey();
            Console.Clear();

        }

        static void verChavepremiada(List<int> numerosP, List<int> estrelasP)
        {

            Console.WriteLine("A chave introduzida foi");
            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {

                Console.Write(" {0}", numerosP[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", estrelasP[i]);
            }

            Console.ReadKey();
            Console.Clear();

        }

        static void compararchaves(List<int> numeros, List<int> estrelas, List<int> numerosP, List<int> estrelasP)
        {
            Boolean verify = true;

            for (int i = 0; i < numeros.Count; i++)
            {

                if (numerosP.IndexOf(numeros[i]) < 0)
                {
                    verify = false;
                }
            }
            for (int i = 0; i < estrelas.Count; i++)
            {
                if (estrelasP.IndexOf(estrelas[i]) < 0)
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
