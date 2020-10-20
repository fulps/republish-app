import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/controller/navigator.dart';
import 'package:republish/estudante/home-estudante.dart';
import 'package:republish/estudante/inicial-estudante.dart';
import 'package:republish/patterns/styles.dart';
import 'package:republish/estudante/favoritos-estudante.dart';
import '../models/UI-button.dart';
import '../drawer.dart';

class MensagemEstudante extends StatefulWidget {
  @override
  _MensagemEstudanteState createState() => _MensagemEstudanteState();
}

class _MensagemEstudanteState extends State<MensagemEstudante> {
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
          UIIconButton(f: () {}, icon: Icons.message),
          UIIconButton(
              f: () {
                Navigate.pushReplace(InicialEstudante(), context);
              },
              icon: Icons.place),
          UIIconButton(
              f: () {
                Navigate.pushReplace(FavoritoEstudante(), context);
              },
              icon: FontAwesomeIcons.solidHeart)
        ], 1),
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
              'MENSAGENS',
              style: ThemeFonts.bigText(Pallete.white),
            )),
        drawer: new MyDrawer(),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecorations.boxPurpleDecorationGradient,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 10),
              child: Center(
                child: Column(
                  children: [
                    Blocks.studentMessagesChat("Republica pro Matheus dormir",
                        "Por favor me deixa em paz pelo amor de deus...", true),
                  ],
                ),
              ),
            )));
  }
}
