import 'package:flutter/material.dart';

class Screen_Doacoes extends StatefulWidget {
  @override
  _Screen_DoacoesState createState() => _Screen_DoacoesState();
}

class _Screen_DoacoesState extends State<Screen_Doacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar - Barra de Navegação com ícone
      appBar: AppBar(
        centerTitle: true,
        //barra da tela cadastro
        title: Text(
          'Minhas Doações',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 30,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),

      //body
      //Container de todo o corpo da tela
      body: Container(
        //Coluna de todo corpo
        child: Column(
          children: [
            //Container da parte de Filtro
            Container(
              padding: EdgeInsets.only(top: 10),
              width: 420,
              height: 180,
              color: Color(0xfff48d8a),
              //Coluna que define o conteúdo do container do filtro
              child: Column(
                children: <Widget>[
                  //Texto do filtro
                  Text(
                    "Filtro",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'KGred',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  //Container para o formulário
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Nome do Pet",
                        labelStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontFamily: 'KGred',
                        ),
                      ),
                    ),
                  ),
                  //Container para o Botão
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(top: 15),
                    height: 40,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.black)),
                      color: Colors.orangeAccent,
                      //Ação do botão
                      onPressed: () => {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Screen_Doacoes())),
                      },
                      //Row para organizar o texto e o icon dentro do botão
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //Texto "Buscar" do botão
                          Text(
                            "Buscar",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'KGred',
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          //Icone do botão
                          Container(
                            child: SizedBox(
                              child: Image.asset("assets/img/icon_busca.png"),
                              height: 25,
                              width: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Inicio do Grid de anuncios
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(4.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  childAspectRatio: 0.60,
                ),
                itemBuilder: (context, index) {
                  //card
                  return InkWell(
                    //Card dos anuncios
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          width: 5.0,
                          color: Color(0xff2be0b5),
                        ),
                      ),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //Container da imagem dos anuncios
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    //Imagem do anuncio
                                    "https://www.clubeparacachorros.com.br/wp-content/uploads/2018/05/filhote-golden-correndo.jpg"),
                              ),
                            ),
                          ),

                          //Texto de descrição do pet

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

                          //botao quero visualizar
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
                                  side: BorderSide(color: Color(0xffeba947))),
                              color: Color(0xffeba947),

                              //ação do botao
                              onPressed: () => {
                                Navigator.pushNamed(context, '/perfilpet'),
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Visualizar",
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
            ),
          ],
        ),
      ),
    );
  }
}
