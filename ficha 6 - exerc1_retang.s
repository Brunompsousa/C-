namespace f6_exerc1
{
    public class Figura_Quadrado : Figura
    {
        public Figura_Quadrado()
        {
            pontos = new Ponto[4];

            for (int i = 0; i < 4; i++)
            {
                pontos[i] = new Ponto(0, 0);
            }
        }
    }
}