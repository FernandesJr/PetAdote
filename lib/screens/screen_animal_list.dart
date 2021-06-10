import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pet_adote/models/animal_model.dart';
import 'package:pet_adote/screens/screen_perfil_pet.dart';

class Animal_List extends StatefulWidget {
  //Anuncios anunciosList;
  @override
  _Animal_ListState createState() => _Animal_ListState();
}

class _Animal_ListState extends State<Animal_List> {
  Animal animal = Animal();
  var dados;
  bool carregando = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getJsonData();
    print("Começei a carregar o valor ainda está: ${carregando}");
  }

  //Coleta os anúncios
  getJsonData() async {
    final url = Uri.parse(
        "https://api-petadote0.000webhostapp.com/Retorno/animaisList.php");

    final response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    this.dados = jsonResponse;
    setState(() {
      this.dados = jsonResponse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (!carregando)
        ? Text("carregando")
        : InkWell(
            child: GridView.builder(
              padding: EdgeInsets.all(4.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                childAspectRatio: 0.60,
              ),
              itemCount: dados.length,
              itemBuilder: (context, index) {
                return InkWell(
                  //card do anuncio
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        width: 3.5,
                        color: Color(0xff2be0b5),
                      ),
                    ),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 5),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              //imagem do anuncio
                              image: NetworkImage(
                                  "https://www.clubeparacachorros.com.br/wp-content/uploads/2018/05/filhote-golden-correndo.jpg"),
                            ),
                          ),
                        ),

                        //TExto e descrição do pet

                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 10,
                            left: 10,
                          ),
                          color: Color.fromRGBO(211, 211, 211, 0.6),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                //Texto de nome
                                TextSpan(
                                  text: "Nome",
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.orange,
                                  ),
                                ),
                                //aqui sera o que vai vir do banco o nome do cachorro
                                TextSpan(
                                  text: dados[index]['nome'] + '\n',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),

                                //Texto de especie
                                TextSpan(
                                  text: 'Espécie: ',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.orange,
                                  ),
                                ),
                                //aqui sera o que vai vir do banco a especie do cachorro
                                TextSpan(
                                  text: dados[index]['especie'] + '\n',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),

                                //Texto de cor
                                TextSpan(
                                  text: 'Cor: ',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.orange,
                                  ),
                                ),

                                //aqui sera o que vai vir do banco a cor do cachorro
                                TextSpan(
                                  text: dados[index]['cor'] + '\n',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),

                                //Texto de raça
                                TextSpan(
                                  text: 'Raça: ',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.orange,
                                  ),
                                ),

                                //aqui sera o que vai vir do banco a raça do cachorro
                                TextSpan(
                                  text: dados[index]['raca'] + '\n',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),

                                //Texto de Sexo
                                TextSpan(
                                  text: 'Sexo: ',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.orange,
                                  ),
                                ),

                                //aqui sera o que vai vir do banco o sexo do cachorro
                                TextSpan(
                                  text: dados[index]['sexo'] + '\n',
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //botao quero adotar
                        Container(
                          padding: EdgeInsets.only(
                            top: 12,
                            right: 15,
                            left: 15,
                          ),
                          height: 52,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                color: Color(0xffeba947),
                              ),
                            ),
                            color: Color(0xffeba947),

                            //ação do botao
                            onPressed: () => {
                              this.animal.fromJson(dados[index]),
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Perfil_Pet(animal: this.animal)))
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Quero Adotar",
                                  style: TextStyle(
                                    fontFamily: 'KGred',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }
}
