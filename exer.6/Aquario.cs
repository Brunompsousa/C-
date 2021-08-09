using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ficha3
{
    class Aquario
    {

        private List<Peixe> meusPeixes;
        private List<Peixe> peixesTemporarios;
        private int largura;
        private int altura;
        private int maxPeixes;

        private Random rnd;

        private Aquario()
        {
        }

        public Aquario(int maxPeixes, int largura, int altura)
        {
            this.largura = largura;
            this.altura = altura;
            this.maxPeixes = maxPeixes;
            meusPeixes = new List<Peixe>();
            rnd = new Random();
        }

        public bool AddPeixe(Peixe novoPeixe)
        {
            if (meusPeixes.Count < maxPeixes)
            {
                // Gerar coordenadas para os peixes
                novoPeixe.SetCoordenadas(GeraPeixeCoordenadas());
                // Adiciona o peixe
                meusPeixes.Add(novoPeixe);
                return true;
            }
            return false;
        }

        public bool AddPeixeTemporario(Peixe novoPeixe)
        {
            if ((meusPeixes.Count + peixesTemporarios.Count) < maxPeixes)
            {
                peixesTemporarios.Add(novoPeixe);
                return true;
            }
            return false;
        }

        public bool DelPeixe(int numSerie)
        {
            foreach (Peixe peixe in meusPeixes)
            {
                if (peixe.GetNumeroSerie() == numSerie)
                {
                    meusPeixes.Remove(peixe);
                    return true;
                }
            }
            return false;
        }

        public bool DelPeixeTemporario(Peixe peixe)
        {
            if (meusPeixes.Contains(peixe))
            {
                peixesTemporarios.Add(peixe);
                return true;
            }
            return false;
        }

        public bool DelPeixeTemporario(int numSerie)
        {
            foreach (Peixe peixe in meusPeixes)
            {
                if (peixe.GetNumeroSerie() == numSerie)
                {
                    peixesTemporarios.Add(peixe);
                    return true;
                }
            }
            return false;
        }

        public void Alimentar(int quantidade)
        {
            peixesTemporarios = new List<Peixe>(); // Peixes temporários a null

            foreach (Peixe peixe in meusPeixes)
            {
                peixe.Alimentar(quantidade, this);
            }

            foreach (Peixe peixeTemporario in peixesTemporarios)
            {
                peixeTemporario.SetCoordenadas(GeraPeixeCoordenadas());
                meusPeixes.Add(peixeTemporario);
            }
        }

        public void Abana()
        {
            peixesTemporarios = new List<Peixe>(); // Peixes temporários a null

            for (int i = 0; i < meusPeixes.Count; i++)
            {
                meusPeixes[i].Emagrece(this);
            }

            foreach (Peixe peixeTemporario in peixesTemporarios)
            {
                meusPeixes.Remove(peixeTemporario);
            }

            peixesTemporarios = new List<Peixe>(); // Peixes temporários a null
            // mudar peixes de posicao

            foreach (Peixe peixe in meusPeixes)
            {
                int larg = rnd.Next(0, largura);
                int alt = rnd.Next(0, altura);
                PeixeCoordenadas aux = new PeixeCoordenadas(larg, larg);
                peixe.SetCoordenadas(aux);                                  // Peixe na nova posição

                foreach (Peixe peixe2 in meusPeixes)
                {
                    if (peixe.GetCoordenadas().ComparaCoordenadas(peixe2.GetCoordenadas()))
                    {
                        if (peixe.GetPeso() < peixe2.GetPeso())
                        {
                            DelPeixeTemporario(peixe);
                        }
                        if (peixe.GetPeso() > peixe2.GetPeso())
                        {
                            DelPeixeTemporario(peixe2);
                        }
                    }
                }
            }
            
            // Voltamos a apagar os temporários
            foreach (Peixe peixeTemporario in peixesTemporarios)
            {
                meusPeixes.Remove(peixeTemporario);
            }
        }

        private PeixeCoordenadas GeraPeixeCoordenadas()
        {
            PeixeCoordenadas aux = null;
            bool encontrado = false;
            do
            {
                aux = new PeixeCoordenadas(rnd.Next(0, largura), rnd.Next(0, altura));
                for (int i = 0; i < meusPeixes.Count; i++)
                {
                    if (meusPeixes[i].GetCoordenadas().ComparaCoordenadas(aux))
                        encontrado = true;
                    // Verifica se a posição é nula no array de posições e se a posição é igual  
                }
            }
            while (encontrado); // enquanto existir outro peixe nessa posição, gera nova posição

            return aux;
        }

        public String Descricao()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("Aquario com " + meusPeixes.Count + " peixes\n\n");
            foreach (Peixe peixe in meusPeixes)
            {
                sb.Append(peixe.Descricao());
            }
            return sb.ToString();
        }
    }
}
