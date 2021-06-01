import 'package:flutter/material.dart';

class Cadastropet extends StatefulWidget {
  @override
  _CadastropetState createState() => _CadastropetState();
}

class _CadastropetState extends State<Cadastropet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela cadastro de pet
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cadastro pet',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 30,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),

      //body cadastro com container
      body: Container(
        padding: EdgeInsets.only(
          top: 8,
          left: 30,
          right: 30,
          bottom: 10,
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              //Foto do perfil
              CircleAvatar(
                child: Image.asset('assets/img/img_perfil.jpg'),
                radius: 65,
              ),

              //Form de Nome
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                ////// ATENÇÂO LIMITEM ESSE CAMPO A DIGITAR NO MAXIMO 11 DIGITOS PARA QUE NAO OCORRA UM BUG NO PERFIL DO PET
                decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Especie
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Espécie",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Cor
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Cor",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de raça
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Raça",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Sexo
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: "Sexo",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),

              //Form de Porte
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Porte",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de idade
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Idade",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Divider(),

              //Form de breve descrição
              TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(12, 20, 12, 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Breve descrição",
                ),
              ),
              Divider(),

              //Botao Cadastrar
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Color(0xff2be0b5),
                  //Ação do botão
                  onPressed: () => {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/splashadocao', (route) => false)
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Colocar para adoção",
                        style: TextStyle(
                          fontFamily: 'KGred',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset('assets/img/paw_icon.png'),
                          height: 28,
                          width: 28,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
