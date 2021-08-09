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

            int[] numeros = new int[5];
            int[] Estrelas = new int[2];
            int temp = 51;
            Boolean verify = false;
            
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
                        verify = int.TryParse(dados, out temp);

                        if (temp < 1 || temp > 50 || (Array.IndexOf(numeros, temp))>=0) 
                        {
                            verify = false;
                        }
                        else
                        {
                            numeros[i] = temp;
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

                }while(!verify);
            }

            /*
             * 'FOR' usado para pedir as 2 estrelas da chave
             */

            for (int i = 0; i < 2; i++)
            {
                do
                {

                    Console.Write("Estrela ({0}/2): ", i + 1);
                    string dados = Console.ReadLine();
                    verify = int.TryParse(dados, out Estrelas[i]);

                    if (Estrelas[i] < 1 || Estrelas[i] > 11 || Estrelas[1] == Estrelas[0])
                    {
                        verify = false;
                    }

                    /*
                     * Verificamos se o numero esta entre o intervalo valido
                     * e tambem verificamos se nao sao iguais, visto que apenas temos 2 valores
                     */

                    Console.Clear();

                } while (!verify);
         
            }           

            Console.Write("Numeros:");

            for (int i = 0; i < 5; i++)
            {
                    
                Console.Write(" {0}", numeros[i]);
            }

            Console.Write("\nEstrelas:");

            for (int i = 0; i < 2; i++)
            {

                Console.Write(" {0}", Estrelas[i]);
            }
            
            Console.ReadKey();

            
        }
    }
}
