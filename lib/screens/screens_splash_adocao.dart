import 'package:flutter/material.dart';
import 'package:pet_adote/models/usuario_model.dart';
import 'package:pet_adote/screens/loading.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';

class Splash_adocao extends StatefulWidget {
  Usuario user;
  Splash_adocao({this.user});

  @override
  _Splash_adocaoState createState() => _Splash_adocaoState();
}

class _Splash_adocaoState extends State<Splash_adocao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 100)),
            //foto do icone
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/img/pata_termos_de_uso.png"),
                  fit: BoxFit.contain,
                )),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Center(
              child: Text(
                "Seu Pet foi colocado\n"
                "para adoção\n",
                style: TextStyle(
                  fontFamily: 'KGred',
                  fontSize: 20,
                  color: Colors.orangeAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //loading do splash
            //loading do splash
            Center(child: CustomLoading()),
          ],
        )
      ]),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement<void, void>(
            context,
            MaterialPageRoute<void>(
                builder: (BuildContext context) => HomeScreen(user: widget.user)));
    });
  }
}
