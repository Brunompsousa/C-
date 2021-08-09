using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ficha3
{
    class Peixe
    {
        private static int PeixesNascidos = 1;
        private int numeroSerie = 0;
        private string nome;
        private string cor;
        private double peso; //peso inicial 10g
        private PeixeCoordenadas minhasCoordenadas;
        public Peixe(string nome, string cor, double peso)
        {
            this.nome = nome;
            this.cor = cor;
            this.peso = peso;
            this.numeroSerie = PeixesNascidos++;
        }

        public int GetNumeroSerie()
        {
            return this.numeroSerie;
        }

        public double GetPeso()
        {
            return this.peso;
        }

        public void SetCoordenadas(PeixeCoordenadas coordenadas)
        {
            this.minhasCoordenadas = coordenadas;
        }

        public PeixeCoordenadas GetCoordenadas()
        {
            return this.minhasCoordenadas;
        }

        public void Alimentar(int quantidade, Aquario meuAquario)
        {
            this.peso += quantidade / 2;
            if (this.peso > 100)
            {
                this.peso /= 2;
                Peixe npeixe = new Peixe(this.nome + "C", this.cor, this.peso);
                if (meuAquario != null)
                    meuAquario.AddPeixeTemporario(npeixe);
            }
        }

        public void Emagrece(Aquario meuAquario)
        {
            this.peso = (int)(this.peso * 0.9);
            if (this.peso < 10)
            {
                if (meuAquario != null)
                    meuAquario.DelPeixeTemporario(this);
            }
        }

        public String Descricao()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("Peixe : " + this.nome + ", Numero : " + this.numeroSerie + ", Cor : " + this.cor + ", peso : " +
                      this.peso + "\n");
            sb.Append(minhasCoordenadas.GetCoordenadas());
            return sb.ToString();
        }
    }
}
