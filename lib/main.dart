import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';
import 'package:pet_adote/screens/screen_atualizar_contato.dart';
import 'package:pet_adote/screens/screen_cadastro.dart';
import 'package:pet_adote/screens/screen_cadastro_end.dart';
import 'package:pet_adote/screens/screen_cadastro_pet.dart';
import 'package:pet_adote/screens/screen_creditos.dart';
import 'package:pet_adote/screens/screen_filtros.dart';
import 'package:pet_adote/screens/screen_login.dart';
import 'package:pet_adote/screens/screen_perfil_pet.dart';
import 'package:pet_adote/screens/screen_perfil_usuario.dart';
import 'package:pet_adote/screens/screen_recuperar_senha.dart';
import 'package:pet_adote/screens/screen_splash_cadastro_atualizado.dart';
import 'package:pet_adote/screens/screen_splash_fin_cadastro.dart';
import 'package:pet_adote/screens/screen_splash_inicial.dart';
import 'package:pet_adote/screens/screen_splash_recuperar_senha.dart';
import 'package:pet_adote/screens/screen_suas_doa%C3%A7%C3%B5es.dart';
import 'package:pet_adote/screens/screen_termos_de_uso.dart';
import 'package:pet_adote/screens/screens_splash_adocao.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Rotas Pet adote',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashHome(),
        '/login': (context) => Login(),
        '/cadastro': (context) => Cadastro(),
        '/cadastro2': (context) => Cadastro_end(),
        '/splashcadastro': (context) => Splash_Cadastro(),
        '/recuperarsenha': (context) => Recuperar_senha(),
        '/splashrecuperar': (context) => Splash_recupera_senha(),
        '/homescreen': (context) => HomeScreen(),
        '/cadastropet': (context) => Cadastropet(),
        '/splashadocao': (context) => Splash_adocao(),
        '/termouso': (context) => Termo_uso(),
        '/atualizarcontato': (context) => Atualizar_cadastro(),
        '/splashatualizado': (context) => Splash_atualizado(),
        '/creditos': (context) => Creditos(),
        '/perfilpet': (context) => Perfil_Pet(),
        '/filtros': (context) => Screen_Filtros(),
        '/doaçoes': (context) => Screen_Doacoes(),
        '/perfil': (context) => Perfil_Usuario(),
      },
    );
  }
}
