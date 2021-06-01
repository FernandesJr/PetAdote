import 'package:flutter/material.dart';
import 'screen_anuncios.dart';

class Perfil_Pet extends StatefulWidget {
  @override
  _Perfil_PetState createState() => _Perfil_PetState();
}

class _Perfil_PetState extends State<Perfil_Pet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/img/logo_app_pet_name.png', height: 60),
        toolbarHeight: 70,
        backgroundColor: Color(0xff2be0b5),
      ),

      //body
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              //
              //container com a foto do perfil do pet
              Container(
                margin: EdgeInsets.only(
                  right: 110,
                  left: 110,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  color: Color(0xfff48d8a),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(9),
                ),
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  //url com a foto do pet
                                  image: NetworkImage(
                                      "https://www.clubeparacachorros.com.br/wp-content/uploads/2018/05/filhote-golden-correndo.jpg"))),
                        ),
                      ],
                    ),

                    //container com o nome do pet
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "12345678901",
                        style: TextStyle(
                            fontFamily: 'KGred',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    ),
                  ],
                ),
              ),

              //size box para dar espaço ente a descrição e a foto do pet
              SizedBox(
                height: 20,
              ),

              //container de descrição do pet
              Container(
                alignment: Alignment.topCenter,
                child: RichText(
                  text: TextSpan(
                    children: const <TextSpan>[
                      //Texto de especie
                      TextSpan(
                        text: 'Espécie: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),
                      //aqui sera o que vai vir do banco a especie do cachorro
                      TextSpan(
                        text: 'cão\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de cor
                      TextSpan(
                        text: 'Cor: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),
                      //aqui sera o que vai vir do banco a cor do cachorro
                      TextSpan(
                        text: 'preto + branco\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de Raça
                      TextSpan(
                        text: 'Raça: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),

                      //aqui sera o que vai vir do banco a Raça do cachorro
                      TextSpan(
                        text: 'sem raça definida\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de sexo
                      TextSpan(
                        text: 'Sexo: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),

                      //aqui sera o que vai vir do banco o sexo do cachorro
                      TextSpan(
                        text: 'macho\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      //Texto de idade
                      TextSpan(
                        text: 'Idade: ',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.orange,
                        ),
                      ),

                      //aqui sera o que vai vir do banco a idade do cachorro
                      TextSpan(
                        text: '3 meses\n',
                        style: TextStyle(
                          fontFamily: 'KGred',
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //icone com quem é o doador
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        //imagem do perfil do dono
                        image: NetworkImage(
                          "https://www.clubeparacachorros.com.br/wp-content/uploads/2018/05/filhote-golden-correndo.jpg",
                        ),
                      ),
                    ),
                  ),
                  //container com nome do doador
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 5),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: const <TextSpan>[
                            //Texto de doador
                            TextSpan(
                              text: 'Doador: ',
                              style: TextStyle(
                                fontFamily: 'KGred',
                                fontSize: 15,
                                color: Colors.orange,
                              ),
                            ),

                            //aqui sera o que vai vir do banco a especie do cachorro
                            TextSpan(
                              text: 'Marcones Lira da Silva Santos figueira\n',
                              style: TextStyle(
                                fontFamily: 'KGred',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //descrição do pet
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      "Informações adicionais",
                      style: TextStyle(
                        fontFamily: 'KGred',
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(5),
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xfffffdd0),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    ///texto das informaçoes adicionais
                    child: Text(
                      'informaçoes',
                      style: TextStyle(
                        fontFamily: 'KGred',
                      ),
                    ),
                  ),

                  //botao quero adotar
                  Container(
                    width: 250,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: RaisedButton(
                      color: Color(0xff2be0b5),
                      //ação do botao
                      //aqui tem que levar pro whatsapp, agr esta retornando para homescreen
                      onPressed: () => {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeScreen())),
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "Quero Adotar",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'KGred',
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/img/whatsapp.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
