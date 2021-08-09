using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ficha4exer2
{

    class Carro
    {
        private string marca;
        private string modelo;
        private string cor;
        private String matricula;
        private string combustivel;
        private int maxcombustivel;
        private int maxvelocidade;
        private int kmspercorridos;

        public Carro()
        {
            
        }

        public Carro(string marca_, string modelo_, string cor_, string matricula_, string combustivel_,
            int maxcombustivel_, int maxvelocidade_, int kmspercorridos_)
        {
            marca = marca_;
            modelo = modelo_;
            cor = cor_;
            matricula = matricula_;
            combustivel = combustivel_;
            maxcombustivel = maxcombustivel_;
            maxvelocidade = maxvelocidade_;
            kmspercorridos = kmspercorridos_;
        }

        //SETTERS
        public void Setmarca(string marca_) //Nao podemos modar a marca de um carro
        {
            marca = marca_;
        }

        public void Setmodelo(string modelo_) //Nao podemos modar o modelo de um carro
        {
            modelo = modelo_;
        }

        public void Setcor(string _cor)
        {
            cor = _cor;
        }

        public void Setmatricula(string _matricula) //Nao podemos modar a matricula de um carro
        {
            matricula = _matricula;
        }

        public void Setcombustivel(string _combustivel)
        {
            combustivel = _combustivel;
        }

        public void Setmaxcombust(int _maxcombustivel)
        {
            maxcombustivel = _maxcombustivel;
        }

        public void Setmaxveloc(int _maxvelocidade)
        {
            maxvelocidade = _maxvelocidade;
        }

        public void Setkms(int _kmspercorridos)
        {
            kmspercorridos = _kmspercorridos;
        }

        //GETTER

        public string Getmarca()
        {
            return marca;
        }

        public string Getmodelo()
        {
            return modelo;
        }

        public string Getcor()
        {
            return cor;
        }

        public string Getmatricula()
        {
            return matricula;
        }

        public string Getcombustivel()
        {
            return combustivel;
        }

        public int Getmaxcombustivel()
        {
            return maxcombustivel;
        }

        public int Getmaxvelocidade()
        {
            return maxvelocidade;
        }

        public int Getkmspercorridos()
        {
            return kmspercorridos;
        }

        public void outputstring()
        {
            Console.WriteLine("Marca: " + marca + "\nModelo: " + modelo + "\nCor: " + cor + "\nMatricula: " + matricula
                + "\nCombustivel: " + combustivel + "\nCombustivel Maximo: " + maxcombustivel + "\nVelocidade Maximo: " + maxvelocidade
                + "\nKM's Percorridos: " + kmspercorridos);
        }



    }
    class Program
    {
        static void Main(string[] args)
        {
            Boolean verify;
            string dados,alt_;
            int opcao,alt;

            Carro car1 = new Carro("xpto","aabb","red","23-23-aa","gasoleo",75,180,100000);
            Carro  car2 = new Carro();


            do
            {
                do
                {
                    Console.WriteLine("Escolha a Opcão que deseja Realizar");
                    Console.WriteLine("1 - Imprimir informacao toda");
                    Console.WriteLine("2 - Imprimir marca");
                    Console.WriteLine("3 - Imprimir modelo");
                    Console.WriteLine("4 - Imprimir e alterar cor");
                    Console.WriteLine("5 - Imprimir matricula");
                    Console.WriteLine("6 - Imprimir e alterar combustivel");
                    Console.WriteLine("7 - Imprimir e alterar combustivel maximo");
                    Console.WriteLine("8 - Imprimir e alterar velocidade maxima");
                    Console.WriteLine("9 - Imprimir e alterar km's percorridos");
                    Console.WriteLine("10 - Criar carro novo");
                    Console.WriteLine("11 - Consultar carro novo");
                    Console.WriteLine("0 - Sair");
                    Console.WriteLine("--> ");
                    dados = Console.ReadLine();
                    verify = int.TryParse(dados, out opcao);

                } while (!verify);

                switch (opcao)
                {
                    case 1:
                        car1.outputstring();
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 2:
                        Console.WriteLine(car1.Getmarca());
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 3:
                        Console.WriteLine(car1.Getmodelo());
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 4:
                        Console.WriteLine(car1.Getcor());

                        Console.Write("\nDeseja alterar a cor do carro?\n1- Sim\n2-Nao\nOpcao-> ");
                        alt_ = Console.ReadLine();
                        

                        verify = int.TryParse(alt_, out alt);

                        if (alt==1)
                        {
                            Console.WriteLine("Nova cor do carro?");
                            string newcor = Console.ReadLine();
                            car1.Setcor(newcor);
                            Console.WriteLine("Cor alterada com sucesso");
                        }
                        
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 5:
                        Console.WriteLine(car1.Getmatricula());
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 6:
                        Console.WriteLine(car1.Getcombustivel());

                        Console.Write("\nDeseja alterar o combustivel do carro?\n1- Sim\n2-Nao\nOpcao-> ");
                        alt_ = Console.ReadLine();


                        verify = int.TryParse(alt_, out alt);

                        if (alt == 1)
                        {
                            Console.WriteLine("Novo Combustivel do carro?");
                            string newcomb = Console.ReadLine();
                            car1.Setcombustivel(newcomb);
                            Console.WriteLine("Combustivel alterado com sucesso");
                        }

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 7:
                        Console.WriteLine(car1.Getmaxcombustivel());

                        Console.Write("\nDeseja alterar o combustivel maximo do carro?\n1- Sim\n2-Nao\nOpcao-> ");
                        alt_ = Console.ReadLine();

                        int newcombmax;

                        verify = int.TryParse(alt_, out alt);

                        if (alt == 1)
                        {
                            Console.WriteLine("Novo maximo de Combustivel do carro?");
                            string newcombmax_ = Console.ReadLine();
                            verify = int.TryParse(newcombmax_, out newcombmax);
                            car1.Setmaxcombust(newcombmax);
                            Console.WriteLine("Combustivel maximo alterado com sucesso");
                        }

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 8:
                        Console.WriteLine(car1.Getmaxvelocidade());

                        Console.Write("\nDeseja alterar a velocidade maxima do carro?\n1- Sim\n2-Nao\nOpcao-> ");
                        alt_ = Console.ReadLine();

                        int newvelmax;

                        verify = int.TryParse(alt_, out alt);

                        if (alt == 1)
                        {
                            Console.WriteLine("Novo maximo de Combustivel do carro?");
                            string newvelmax_ = Console.ReadLine();
                            verify = int.TryParse(newvelmax_, out newvelmax);
                            car1.Setmaxveloc(newvelmax);
                            Console.WriteLine("Combustivel maximo alterado com sucesso");
                        }

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 9:
                        Console.WriteLine(car1.Getkmspercorridos());

                        Console.Write("\nDeseja alterar os km's percorridos do carro?\n1- Sim\n2-Nao\nOpcao-> ");
                        alt_ = Console.ReadLine();

                        int kmsperc;

                        verify = int.TryParse(alt_, out alt);

                        if (alt == 1)
                        {
                            Console.WriteLine("Novo maximo de Combustivel do carro?");
                            string kmsperc_ = Console.ReadLine();
                            verify = int.TryParse(kmsperc_, out kmsperc);
                            car1.Setkms(kmsperc);
                            Console.WriteLine("Combustivel maximo alterado com sucesso");
                        }

                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 10:
                        Console.WriteLine("Marca: ");
                        car2.Setmarca(Console.ReadLine());                      

                        Console.WriteLine("Modelo: ");
                        car2.Setmodelo(Console.ReadLine());

                        Console.WriteLine("Cor: ");
                        car2.Setcor(Console.ReadLine());

                        Console.WriteLine("Matricula: ");
                        car2.Setmatricula(Console.ReadLine());

                        Console.WriteLine("Combustivel: ");
                        car2.Setcombustivel(Console.ReadLine());

                        Console.WriteLine("Max combustivel: ");
                        car2.Setmaxcombust((Console.ReadLine());

                        Console.WriteLine("Max velocidade: ");
                        car2.Setmaxveloc(Console.ReadLine());

                        Console.WriteLine("km's percorridos: ");
                        car2.Setkms(Console.ReadLine());


                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 11:
                        car2.outputstring();
                        Console.ReadKey();
                        Console.Clear();
                        break;

                    case 0:
                        Console.WriteLine("Prima qualquer tecla para sair");
                        Console.ReadKey();
                        break;

                    default:
                        Console.WriteLine("Opcao invalida");
                        break;
                }

            } while (opcao != 0);

        }
    }
}
