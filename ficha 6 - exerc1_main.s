using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace f6_exerc1
{
    class Program
    {
       static Random rnd = new Random();

        static void Main(string[] args)
        {


            Ponto[] pontos = new Ponto[3];
            for (int i = 0 ; i < pontos.Length;i++)
            {
                pontos[i] = new Ponto(rnd.Next(-25,25), rnd.Next(-25, 25));
            }


            Figura_Triangulo abc = new Figura_Triangulo(pontos);
            Figura_Quadrado bcd = new Figura_Quadrado();
            Figura_Pentag cde = new Figura_Pentag();


            abc.informacao();
            abc.altura(pontos);
            Console.ReadKey();
            Console.Clear();

            bcd.informacao();
            Console.ReadKey();
            Console.Clear();

            cde.informacao();
            Console.ReadKey();
        }
    }
}
