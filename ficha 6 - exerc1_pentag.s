namespace f6_exerc1
{
    public class Figura_Pentag :Figura
    {
        public Figura_Pentag()
        {
            pontos = new Ponto[5];

            for (int i = 0; i < 5; i++)
            {
                pontos[i] = new Ponto(0, 0);
            }
        }
    }
}