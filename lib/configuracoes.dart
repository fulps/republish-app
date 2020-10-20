import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/patterns/styles.dart';

class Configuracoes extends StatefulWidget {
  @override
  _ConfiguracoesState createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height / 36),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecorations.boxPurpleDecorationGradient,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Blocks.configTile(
                  "Segurança",
                  "Proteja seus dados e cuide da sua privacidade",
                  FontAwesomeIcons.userAlt),
              Blocks.configTile("Perfil", "Gerencie seus dados e informações",
                  FontAwesomeIcons.shieldAlt),
              Blocks.configTile(
                  "Notificações",
                  "Regule suas notificações, reduza seus ativos",
                  FontAwesomeIcons.bell),
            ])),
      ),
    );
  }
}
