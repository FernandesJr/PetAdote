import 'package:flutter/material.dart';

class Creditos extends StatefulWidget {
  @override
  _CreditosState createState() => _CreditosState();
}

class _CreditosState extends State<Creditos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela cadastro
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Créditos',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 30,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),
      //body da tela
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //dar espaço
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Apóio e Realização:',
                  style: TextStyle(
                    fontFamily: 'KGred',
                    color: Colors.orangeAccent,
                    fontSize: 20,
                  ),
                ),
              ),

              //foto do icone
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/logo_uninassau.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              //foto do icone
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/logo_ads.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              //dar espaço
              SizedBox(
                height: 30,
              ),

              //documentação
              Center(
                child: Text(
                  "Documentação:",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.orangeAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  "Hugo Leonardo\n"
                  "Alison André\n"
                  "Wesley Yuri\n"
                  "Jorge da Silva\n"
                  "Jorge Miguel\n",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              //front
              Center(
                child: Text(
                  "Front-End:",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.orangeAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  "José Erivelton\n"
                  "Diego Leonardo\n"
                  "Jefferson Bezerra\n"
                  "Júlia Cristina\n"
                  "Júnior Lopes\n",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              //back
              Center(
                child: Text(
                  "Back-End:",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.orangeAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  "João Lucas\n"
                  "Gilberto Fernandes\n"
                  "César Ferreira\n"
                  "Marcelo Duque\n"
                  "Glauber Nunes\n"
                  "Juan Axel\n",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              //database
              Center(
                child: Text(
                  "Database:",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.orangeAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  "Laerte Rafael\n"
                  "Alexandre Felipe\n"
                  "José David\n"
                  "Diogo Emanuel\n",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              //gerente de projeto e tutor
              Center(
                child: Text(
                  "Gerente de projeto/Tutor:",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.orangeAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  "Marcones Lira\n"
                  "Antônio Almeida\n\n",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //obs
              Center(
                child: Text(
                  "*Projeto de conclusão de curso da turma de Análise e Desenvolvimento de sistemas do 5° périodo\n\n",
                  style: TextStyle(
                    fontFamily: 'KGred',
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
