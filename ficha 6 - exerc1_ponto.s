class Ponto
    {
        int x, y;

        public Ponto()
        {
            // Construtor por amissão, o ponto criado fica [0,0]
            this.x = 0;
            this.y = 0;
        }
        public Ponto(int x, int y)
        {
            // Construtor com valores, o ponto criado fica [x,y]
            this.x = x;
            this.y = y;
        }

        public int GetX() { return x; }
        public void SetX(int x) { this.x = x; }

        public int GetY() { return y; }
        public void SetY(int y) { this.y = y; }

        public bool ComparaCoordenadas(Ponto outro)
        {
            if (this.x == outro.x && this.y == outro.y)
                return true;
            return false;
        }

        public double DistanciaEntrePontos(Ponto outro)
        {
            float xx = (outro.GetX() - x) ^ 2;
            float yy = (outro.GetY() - y) ^ 2;
            return Math.Sqrt(xx + yy);
        }

        // O override permite implementar o ToString nesta classe
        public override string ToString()
        {
            return "[" + x + "," + y + "]";
        }
    }