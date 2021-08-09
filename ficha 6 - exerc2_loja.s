using System;
using System.Runtime.InteropServices;

namespace ficha6_exec2
{
    public class Loja : Imovel
    {

        private static int n = 0;

        public Loja(int a) : base(a,"loja "+ (++n))
        {
            andar = "Res-de-chao";
            preco = a * 15;
        }

        public override string ToString()
        {
            base.ToString();
            Console.WriteLine("preco: " + preco + " Euros");
            return "a";
        }
    }
}