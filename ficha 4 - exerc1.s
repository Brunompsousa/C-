    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Security;
    using System.Text;
    using System.Threading.Tasks;

    namespace ficha4exe1
    {
        class Pessoa
        {

            string nome;
            int idade;
            char sexo;
            string morada;
            int CC;


            private Pessoa()
            {
                nome = "name";
                idade = 0;
                sexo = 'M';
                morada = "rua";
                CC = 123456789;
            }

            public Pessoa(string name,int idad, char sex, string morad,int ccard)
            {
                nome = name;
                idade = idad;
                sexo = sex;
                morada = morad;
                CC = ccard;

            }


            public void Setnome(string name)
            {
                nome = name;
            }

            public void Setidade(int idd)
            {
                idade = idd;
            }

            public string Getnome()
            {
                return nome;
            }

            public int Getidd()
            {
                return idade;
            }

            public char Getsexo()
            {
                return sexo;
            }

            public string GetMorada()
            {
                return morada;
            }

            public int GetCC()
            {
                return CC;
            }

            public void outputstring()
            {
                Console.WriteLine("Nome: " + nome + "\nIdade: " + idade + "\nSexo: " + sexo + "\nMorada: " + morada + "\nC.Cidadao: " + CC);
            }


        }


        class Program
        {
            static void Main(string[] args)
            {
                Boolean verify;

                string dados;

                int opcao=0;

                Pessoa person = new Pessoa("raquel",22, 'F', "avenida",1234589); //imprime os dados que estamos a enviar directamente para a classe
                              

                do
                {
                    do
                    {
                        Console.WriteLine("Escolha a Opcão que deseja Realizar");
                        Console.WriteLine("1 - Imprimir informacao toda");
                        Console.WriteLine("2 - Imprimir Nome");
                        Console.WriteLine("3 - Imprimir Idade");
                        Console.WriteLine("4 - Imprimir Sexo");
                        Console.WriteLine("5 - Imprimir Morada");
                        Console.WriteLine("6 - Imprimir CC");
                        Console.WriteLine("0 - Sair");
                        Console.WriteLine("--> ");
                        dados = Console.ReadLine();
                        verify = int.TryParse(dados,out opcao);

                    } while (!verify);

                    switch (opcao)
                    {
                        case 1:
                            person.outputstring();
                            Console.ReadKey();
                        Console.Clear();
                        break;

                        case 2:
                            Console.WriteLine("Nome: " + person.Getnome());
                            Console.ReadKey();
                        Console.Clear();
                        break;

                        case 3:
                            Console.WriteLine("Idade: " + person.Getidd());
                            Console.ReadKey();
                        Console.Clear();
                        break;

                        case 4:
                            Console.WriteLine("Sexo: " + person.Getsexo());
                            Console.ReadKey();
                        Console.Clear();
                        break;

                        case 5:
                            Console.WriteLine("Morada: " + person.GetMorada());
                            Console.ReadKey();
                        Console.Clear();
                        break;

                        case 6:
                            Console.WriteLine("CC: " + person.GetCC());
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
