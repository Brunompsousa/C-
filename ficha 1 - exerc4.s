using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*formula a usar no calculo
 
    -b +/-raiz(b^2-4*a*c)
    ----------------------
            2*a
     
*/

namespace exercicio_4
{
    class Program
    {
        static void Main(string[] args)
        {
            int a, b, c;
            Boolean verif;

            //pode ser feito com while

            Console.WriteLine("valor de a?");
            string dados = Console.ReadLine();

            verif = int.TryParse(dados, out a);

            if (!verif)
            {
                Console.WriteLine("Dados Invalidos");   //falha nos dados
            }

            Console.WriteLine("valor de b?");
            dados = Console.ReadLine();

            verif = int.TryParse(dados, out b);

            if (!verif)
            {
                Console.WriteLine("Dados Invalidos");   //falha nos dados
            }

            Console.WriteLine("valor de c?");
            dados = Console.ReadLine();

            verif = int.TryParse(dados, out c);

            if (!verif)
            {
                Console.WriteLine("Dados Invalidos");   //falha nos dados
            }


            int conta1 = ((b * b) + (-4 * a * c));

            if(conta1 >= 0)
            {
                double raiz1 = (-b + Math.Sqrt(conta1)) / (2 * a);

                double raiz2 = (-b - Math.Sqrt(conta1)) / (2 * a);

                Console.WriteLine("As raizes sao: {0} e {1}", raiz1, raiz2);
            }

            else
            {
                Console.WriteLine("As raizes nao sao Racionais");
            }

            Console.ReadKey();

        }
    }
}
