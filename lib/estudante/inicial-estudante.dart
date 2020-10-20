import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/controller/navigator.dart';
import 'package:republish/patterns/styles.dart';
import '../models/UI-button.dart';
import './home-estudante.dart';
import './mensagem-estudante.dart';
import './favoritos-estudante.dart';
import '../drawer.dart';

class InicialEstudante extends StatefulWidget {
  @override
  _InicialEstudanteState createState() => _InicialEstudanteState();
}

class _InicialEstudanteState extends State<InicialEstudante> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomSheet: Blocks.footer([
        UIIconButton(
            f: () {
              Navigate.pushReplace(HomeEstudante(), context);
            },
            icon: FontAwesomeIcons.home),
        UIIconButton(
            f: () {
              Navigate.pushReplace(MensagemEstudante(), context);
            },
            icon: Icons.message),
        UIIconButton(f: () {}, icon: Icons.place),
        UIIconButton(
            f: () {
              Navigate.pushReplace(FavoritoEstudante(), context);
            },
            icon: FontAwesomeIcons.solidHeart)
      ], 2),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Pallete.white),
          flexibleSpace: Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [
                      Pallete.strongPurple,
                      Pallete.lightPurple,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp)),
          ),
          title: new Text(
            'REPUBLISH',
            style: ThemeFonts.bigText(Pallete.white),
          )),
      drawer: new MyDrawer(),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecorations.boxPurpleDecorationGradient,
          child: new Text(
              'Ainda à implementar um mapa com Google Maps ou alguma gambiarra com Fleaflet.')),
    );
  }
}
