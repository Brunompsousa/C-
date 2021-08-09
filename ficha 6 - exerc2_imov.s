using System;

namespace ficha6_exec2
{
    public class Imovel
    {
        public int area;
        public double preco;
        public string andar;
        public string codigo;

        /*Construtr da classe Imovel*/
        public Imovel(int a,string cod) 
        {
            area = a;
            codigo = cod;
        }
        /*Get para que seja possivel apenas pedir o codigo do Objecto*/
        public String getcodigo
        {
            get
            {
                return codigo;
            }
        }
        /*Get para que seja possivel apenas pedir o andar do Objecto*/
        public String getandar
        {
            get
            {
                return andar;
            }
        }

        /*Get para que seja possivel apenas pedir o preco do Objecto*/
        public double getpreco
        {
            get
            {
                return preco;
            }
        }

        /*Override so tostring para imprimir os dados dos Objectos*/
        public override string ToString()
        {         
            Console.WriteLine("Codigo: " + codigo);
            Console.WriteLine("area: " + area + " m2");
            return "a";
        }

        


    }
}