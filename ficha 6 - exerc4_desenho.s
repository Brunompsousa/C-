using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Ficha3;

namespace ficha6exer4
{
    class Program
    {
        static void Main(string[] args)
        {

            Aquario aq1 = new Aquario(10,20,20);
            aq1.AddPeixe(new Peixe("p1","verde",25));

                Console.Write(aq1.Descricao());

            /* for numero de peixes,
             * quanto for a posicao, verifica o tipo de peixe, 
             * imprime a letra dependendo do tipo de peixe
             * 
             */
           /*
            for (int i = 0; i <= 20; i++)
                {
                Console.Write("\n");
                    for (int i2 = 0; i2 <= 20; i2++)
                    {

                        if (aq1.getx(0) == i)

                                if(aq1.gety(0) == i2)
                                    Console.Write("P ");
                                else
                                    Console.Write("~ ");
                        else
                            Console.Write("~ ");
                    }

                }*/

            Console.ReadKey();

        }
    }
}
