using System;
using System.Dynamic;
using System.Runtime.InteropServices;

namespace ficha6_exec2
{
    public class Apartamento : Imovel
    {
        private static int n = 0;

        public Apartamento(int a, string an) : base(a*10,"Apartamento "+ (++n))
        {
            preco = a * 10;
            andar = an;
        }

        public override string ToString()
        {
            base.ToString();
            Console.WriteLine("preco: " + preco + " Euros");
            Console.WriteLine("andar: " + andar);
            return "a";
        }

    }
}