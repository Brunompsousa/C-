using System;
using System.Collections.Generic;

namespace ficha5exer1
{
    public class Coordenadas
    {
        //constituicao das coordenadas
        private int x;
        private int y;

        public Coordenadas()
        {
        }

        public Coordenadas(int x, int y)
        {
            this.x = x;
            this.y = y;
        }

        public void ver_cord()
        {
            Console.WriteLine("Cord x: {0}", x);
            Console.WriteLine("Cord y: {0}", y);
        }
    }
}