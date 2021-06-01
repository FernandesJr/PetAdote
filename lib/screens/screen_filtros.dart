import 'package:flutter/material.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';

class Screen_Filtros extends StatefulWidget {
  @override
  _Screen_FiltrosState createState() => _Screen_FiltrosState();
}

class _Screen_FiltrosState extends State<Screen_Filtros> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar de filtros
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/img/logo_app_pet_name.png', height: 60),
          toolbarHeight: 70,
          backgroundColor: Color(0xff2be0b5),
        ),

        //cor do body
        backgroundColor: Color(0xffffb6c1),

        //body
        body: Container(
          color: Color(0xfff48d8a),
          padding: EdgeInsets.only(top: 20),
          child: ListView(
            children: <Widget>[
              // Coluna Geral da Tela
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //Primeira linha para ajustar o Título
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Filtro",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'KGred',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      )
                    ],
                  )
                ],
              ),

              // Espaçamento
              SizedBox(
                height: 20,
              ),

              // Container para o TextForm de Estado
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Estado",
                    labelStyle: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      fontFamily: 'KGred',
                    ),
                  ),
                ),
              ),

              //Espaçamento
              SizedBox(
                height: 20,
              ),

              //Segundo Container para o TextForm Cidade
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Cidade",
                    labelStyle: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      fontFamily: 'KGred',
                    ),
                  ),
                ),
              ),

              //Espaçamento
              SizedBox(
                height: 20,
              ),

              //Início do DropDownButton
              // Primeiro DropDown - Espécie
              Container(
                //Coluna para organizar o título e o dropdownbutton
                child: Column(
                  children: <Widget>[
                    //Linha para organizar o conteúdo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: <Widget>[
                            Text(
                              "Espécie",
                              style: TextStyle(
                                  fontFamily: 'KGred',
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                            //Container para definir o backgroundcolor do DropDownButton
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              padding: EdgeInsets.only(
                                top: 0,
                                left: 10,
                                right: 10,
                                bottom: 0,
                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                style: TextStyle(
                                  color: Color(0xff2be0b5),
                                ),
                                underline: Container(
                                  height: 2,
                                  color: Color(0xff2be0b5),
                                ),
                                dropdownColor: Colors.white,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Three',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),

                        //Segundo DropDown - Cor
                        Column(
                          children: <Widget>[
                            Text(
                              "Cor",
                              style: TextStyle(
                                fontFamily: 'KGred',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              padding: EdgeInsets.only(
                                top: 0,
                                left: 10,
                                right: 10,
                                bottom: 0,
                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                style: TextStyle(
                                  color: Color(0xff2be0b5),
                                ),
                                underline: Container(
                                  height: 2,
                                  color: Color(0xff2be0b5),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Three',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),

                        //Terceiro DropDown - Raça
                        Column(
                          children: <Widget>[
                            Text(
                              "Raça",
                              style: TextStyle(
                                fontFamily: 'KGred',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              padding: EdgeInsets.only(
                                top: 0,
                                left: 10,
                                right: 10,
                                bottom: 0,
                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                style: TextStyle(
                                  color: Color(0xff2be0b5),
                                ),
                                underline: Container(
                                  height: 2,
                                  color: Color(0xff2be0b5),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Three',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    //sizebox para espaçamento
                    SizedBox(
                      height: 20,
                    ),

                    //primeiro DropDown - sexo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: <Widget>[
                            Text(
                              "Sexo",
                              style: TextStyle(
                                fontFamily: 'KGred',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            //Container para definir o backgroundcolor do DropDownButton
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              padding: EdgeInsets.only(
                                top: 0,
                                left: 10,
                                right: 10,
                                bottom: 0,
                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                style: TextStyle(
                                  color: Color(0xff2be0b5),
                                ),
                                underline: Container(
                                  height: 2,
                                  color: Color(0xff2be0b5),
                                ),
                                dropdownColor: Colors.white,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Three',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),

                        //Segundo DropDown - porte
                        Column(
                          children: <Widget>[
                            Text(
                              "Porte",
                              style: TextStyle(
                                fontFamily: 'KGred',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              padding: EdgeInsets.only(
                                top: 0,
                                left: 10,
                                right: 10,
                                bottom: 0,
                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                style: TextStyle(
                                  color: Color(0xff2be0b5),
                                ),
                                underline: Container(
                                  height: 2,
                                  color: Color(0xff2be0b5),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Three',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),

                        //Terceiro DropDown - idade
                        Column(
                          children: <Widget>[
                            Text(
                              "Idade",
                              style: TextStyle(
                                fontFamily: 'KGred',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              margin: EdgeInsets.only(
                                top: 10,
                              ),
                              padding: EdgeInsets.only(
                                top: 0,
                                left: 10,
                                right: 10,
                                bottom: 0,
                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                style: TextStyle(
                                  color: Color(0xff2be0b5),
                                ),
                                underline: Container(
                                  height: 2,
                                  color: Color(0xff2be0b5),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Three',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    //Botão para buscar os filtros selecionados
                    Container(
                      width: 250,
                      margin: EdgeInsets.only(top: 80),
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        color: Colors.orangeAccent,
                        //Ação do botão
                        onPressed: () => {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen())),
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Buscar",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'KGred',
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                child: Image.asset("assets/img/icon_busca.png"),
                                height: 45,
                                width: 45,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
