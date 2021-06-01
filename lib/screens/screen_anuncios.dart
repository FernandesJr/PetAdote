import 'package:flutter/material.dart';
import 'package:pet_adote/screens/screen_drawer.dart';
import 'package:pet_adote/screens/screen_animal_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/img/logo_app_pet_name.png',
          height: 60,
        ),
        toolbarHeight: 70,
        backgroundColor: Color(0xff2be0b5),

        ///botao de filtros
        actions: <Widget>[
          FlatButton.icon(
            //ação do botao filtros
            onPressed: () {
              Navigator.pushNamed(context, '/filtros');
            },
            icon: Icon(
              Icons.filter_alt,
              color: Color(0xfff48d8a),
            ),
            label: Text(
              'Filtro',
              style: TextStyle(
                fontFamily: 'KGred',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0xfff48d8a),
              ),
            ),
          ),
        ],
      ),

      //Janela lateral - Drawer
      drawer: CustomDrawer(),

      //Tela de Anúncios dos Pets
      body: Animal_List(),
    );
  }
}
