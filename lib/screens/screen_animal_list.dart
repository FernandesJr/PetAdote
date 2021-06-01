import 'package:flutter/material.dart';

class Animal_List extends StatefulWidget {
  @override
  _Animal_ListState createState() => _Animal_ListState();
}

class _Animal_ListState extends State<Animal_List> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GridView.builder(
        padding: EdgeInsets.all(4.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          childAspectRatio: 0.60,
        ),
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
                        children: const <TextSpan>[
                          //Texto de nome
                          TextSpan(
                            text: 'Nome: ',
                            style: TextStyle(
                              fontFamily: 'KGred',
                              fontSize: 10,
                              color: Colors.orange,
                            ),
                          ),
                          //aqui sera o que vai vir do banco o nome do cachorro
                          TextSpan(
                            text: 'Rex\n',
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
                            text: 'espécie\n',
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
                            text: 'preto com amarelo\n',
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
                            text: 'raça desconehcida\n',
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
                            text: 'macho\n',
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
                        Navigator.pushNamed(context, '/perfilpet'),
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
