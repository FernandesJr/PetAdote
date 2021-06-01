import 'package:flutter/material.dart';

class Termo_uso extends StatefulWidget {
  @override
  _Termo_usoState createState() => _Termo_usoState();
}

class _Termo_usoState extends State<Termo_uso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela cadastro
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Termos de Uso',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 30,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30, right: 20, left: 20),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: 'Termos e condições gerais de uso do aplicativo\n\n',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text:
                        'Os serviços do aplicativo são fornecidos pela pessoa física que aceita cadastrar-se no mesmo, todo o conteúdo exposto sobre a divulgação e adoção dos pets é de responsabilidade do  doador e do adotante.\n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '1. Do objeto\n',
                  ),
                  TextSpan(
                    text:
                        'A plataforma visa fornecer ferramentas para auxiliar na pesquisa e adoção aos seus  usuários. A plataforma caracteriza-se pela prestação do seguinte serviço: Intermédio entre doador de animais e adotante por meio online.\n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '2. Da aceitação\n',
                  ),
                  TextSpan(
                    text:
                        'O presente Termo estabelece obrigações contratadas de livre e espontânea vontade entre as pessoas físicas, usuários do aplicativo. Ao utilizar a plataforma o usuário aceita integralmente as presentes normas e compromete-se a observá-las. A aceitação do presente instrumento é imprescindível para o acesso e para a utilização dos serviços fornecidos pelo aplicativo. Caso não concorde com as disposições deste instrumento, o usuário não deve utilizá-lo.\n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '3. Do acesso dos usuários\n',
                  ),
                  TextSpan(
                    text:
                        'A plataforma será aberta a todos os usuários e anunciadores do serviço, as soluções técnicas à disposição do responsável pela plataforma para permitir o acesso ao serviço 24 (vinte e quatro) horas por dia, 7 (sete) dias por semana. No entanto, a navegação na plataforma ou em alguma de suas páginas poderá ser interrompida, limitada ou suspensa para atualizações, modificações ou qualquer ação necessária ao seu bom funcionamento. \n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text:
                        '(Se há necessidade de cadastro para uso da plataforma)\n4. Do cadastro\n ',
                  ),
                  TextSpan(
                    text:
                        'O acesso às funcionalidades da plataforma exigirá a realização de um cadastro prévio. Ao se cadastrar o usuário deverá informar dados completos, recentes e válidos, sendo de sua exclusiva responsabilidade manter os referidos dados atualizados, bem como o usuário se compromete com a veracidade dos dados fornecidos.\n O usuário se compromete a não informar seus dados cadastrais e/ou de acesso à plataforma a terceiros, responsabilizando-se integralmente pelo uso que deles seja feito.\n Menores de 18 anos e aqueles que não possuírem plena capacidade civil deverão obter previamente o consentimento expresso de seus responsáveis legais para utilização da plataforma e dos serviços ou produtos, sendo de responsabilidade exclusiva dos mesmos o eventual acesso por menores de idade e por aqueles que não possuem plena capacidade civil sem a prévia autorização.\n Mediante a realização do cadastro o usuário declara e garante expressamente ser plenamente capaz, podendo exercer e usufruir livremente dos serviços e produtos.\n O usuário deverá fornecer um endereço de e-mail válido, através do qual o app realizará todas comunicações necessária.\n Após a confirmação do cadastro, o usuário possuirá um login e uma senha pessoal, a qual assegura ao usuário o acesso individual à mesma. Desta forma, compete ao usuário exclusivamente amanutenção de referida senha de maneira confidencial e segura, evitando o acesso indevido às informações pessoais.\n Toda e qualquer atividade realizada com o uso da senha será de responsabilidade do usuário, que deverá informar prontamente a plataforma em caso de uso indevido da respectiva senha.Caberá ao usuário assegurar que o seu anuncio seja compatível com as características apresentadas. O usuário poderá, a qualquer tempo, requerer o cancelamento de seu cadastro junto ao aplicativo.O usuário, ao aceitar os Termos e Política de Privacidade, é responsável inteiramente por todas as ações que o mesmo fara no aplicativo conforme a LGPD. \n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '5. Do suporte \n',
                  ),
                  TextSpan(
                    text:
                        'Em caso de qualquer dúvida, sugestão ou problema com a utilização da plataforma, o usuário poderá entrar em contato com o suporte, através do e-mail contato@dlirati.com.br. \n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '6. Das responsabilidades \n',
                  ),
                  TextSpan(
                    text:
                        'É de responsabilidade do usuário: \na) a correta utilização da plataforma, dos serviços oferecidos, prezando pela boa convivência, pelo  respeito e cordialidade entre os usuários; \nb) pela proteção aos dados de acesso à sua conta/perfil (login e senha). \n\nA plataforma não se responsabiliza por links externos contidos em seu sistema que possam redirecionar o usuário à ambiente externo a sua rede. Não poderão ser incluídos links externos ou páginas que sirvam para fins comerciais ou publicitários ou quaisquer informações ilícitas, violentas, polêmicas, pornográficas, xenofóbicas, discriminatórias ou ofensivas. A mesma também não será responsável pelo comprometimento do anunciante ou do usuário, todo e quaisquer procedimentos são de responsabilidade da pessoa interessada no anúncio/adoção e o anunciante/doador. \n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '7. Dos direitos autorais \n',
                  ),
                  TextSpan(
                    text:
                        'O presente Termo de Uso concede aos usuários uma licença não exclusiva, não transferível e não sublicenciável, para acessar e fazer uso da plataforma e dos serviços e produtos por ela disponibilizados.\n A estrutura do aplicativo, aos logotipos, layouts, gráficos e design de interface, imagens, ilustrações, fotografias, apresentações, vídeos, conteúdos escritos, banco de dados, arquivos de transmissão e quaisquer outras informações são de direitos de propriedade intelectual da razão social DliraTI Soluções Digitais, observados os termos da Lei da Propriedade Industrial (Lei nº 9.279/96), Lei de Direitos Autorais (Lei nº 9.610/98) e Lei do Software (Lei nº 9.609/98) e LGPD, estão devidamente reservados.\n Este Termos de Uso não cede ou transfere ao usuário qualquer direito, de modo que o acesso não gera qualquer direito de propriedade intelectual ao usuário, exceto pela licença limitada ora concedida. O uso da plataforma pelo usuário é pessoal, individual e intransferível, sendo vedado qualquer uso não autorizado, comercial ou não-comercial. Tais usos consistirão em violação dos direitos de propriedade intelectual da DLiraTI, puníveis nos termos da legislação aplicável.\n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '8. Das sanções\n',
                  ),
                  TextSpan(
                    text:
                        'Sem prejuízo das demais medidas legais cabíveis, poderá, a qualquer momento, advertir, suspender ou cancelar a conta do usuário:\na)que violar qualquer dispositivo do presente Termo;\nb)que descumprir os seus deveres de usuário;\nc)que tiver qualquer comportamento fraudulento, doloso ou que ofenda a terceiros.\n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '9. Da rescisão \n',
                  ),
                  TextSpan(
                    text:
                        'A não observância das obrigações pactuadas neste Termo de Uso ou da legislação aplicável poderá, sem prévio aviso, ensejar a imediata rescisão unilateral e o bloqueio de todos os serviços prestados ao usuário.\n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '10. Das alterações \n',
                  ),
                  TextSpan(
                    text:
                        'Os itens descritos no presente instrumento poderão sofrer alterações, unilateralmente e a qualquer tempo, por parte dos desenvolvedores do aplicativo, para adequar ou modificar os serviços, bem como para atender novas exigências legais. As alterações serão veiculadas pelo aplicativo e o usuário poderá optar por aceitar o novo conteúdo ou por cancelar o uso dos serviços. \n\n',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
