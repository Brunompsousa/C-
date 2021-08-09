using System;
using System.Collections.Generic;

namespace f6_exerc1
{
    public class Figura
    {
        public Ponto[] pontos;


        public void informacao()
        {
            for (int i = 0; i < pontos.Length; i++)
            {
                Console.WriteLine("Ponto {0} :",i+1);
                pontos[i].informa_pontos();
            }
        }

        public void altura(Ponto[] p)
        {
            int maiory=0, menory=0;

            foreach (var ponto in p)
            {
                int ytemp = ponto.ponto_y();
                if (ytemp > maiory)
                    maiory = ytemp;
                if (ytemp < menory)
                    menory = ytemp;
            }

            if (menory < 0)
                menory = Math.Abs(menory);
            
            Console.WriteLine("Altura do Objecto : {0}", maiory+menory);
        }

        public void largura()
        {
            
        }

        public void perimetro()
        {
            
        }

        public void area()
        {
            
        }
    }
}   