import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //perfil do usuario
          UserAccountsDrawerHeader(
            //nome do usuario
            accountName: Text("Seu nome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            //login do usuario
            accountEmail: Text("user@mail.com",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            //imagem de fundo
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/img/fundo_teste.png'),
                fit: BoxFit.cover,
              ),
            ),
            //imagem do perfil do usuario
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/img/logo_app_pet_name.png'),
              backgroundColor: Color(0xff2be0b5),
            ),
          ),

          //lista do menu Seu Perfil
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Meu perfil",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/perfil');
            },
          ),

          //lista do menu Suas doações
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              "Minhas doações",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/doaçoes');
            },
          ),

          //lista do menu Termos de uso
          ListTile(
            leading: Icon(Icons.article),
            title: Text(
              "Termos de Uso",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/termouso');
            },
          ),

          //lista do menu Seus contatos
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text(
              "Atualizar perfil",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/atualizarcontato');
            },
          ),

          //lista de creditos
          ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text(
              "Créditos",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/creditos');
            },
          ),

          //lista de sair da Conta
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              "Sair",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (route) => false);
            },
          ),

          SizedBox(
            height: 85,
          ),

          //botao de por para adotar os pets
          Container(
            height: 70,
            child: RaisedButton(
              color: Colors.orangeAccent,
              //Ação do botão
              onPressed: () => {
                Navigator.pushNamed(context, '/cadastropet'),
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Colocar um Pet\n" "para Adoação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'KGred',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      child: Image.asset("assets/img/adocao_icon.png"),
                      height: 45,
                      width: 45,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
