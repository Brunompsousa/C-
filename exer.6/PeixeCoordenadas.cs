using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ficha3
{
    class PeixeCoordenadas
    {
        int x, y;
        public PeixeCoordenadas(int x, int y)
        {
            this.x = x;
            this.y = y;
        }

        public int GetX() { return x; }
        public void SetX(int x) { this.x = x; }

        public int GetY() { return y; }
        public void SetY(int y) { this.y = y; }

        public bool ComparaCoordenadas(PeixeCoordenadas outro)
        {
            if (this.x == outro.x && this.y == outro.y)
                return true;
            return false;
        }

        public String GetCoordenadas()
        {
            return "X : " + x + ", Y : " + y + "\n";
        }
    }
}
