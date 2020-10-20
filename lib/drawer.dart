import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/controller/navigator.dart';
import 'package:republish/patterns/styles.dart';
import 'package:republish/suporte.dart';
import 'configuracoes.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Widget build(BuildContext context) {
    return Drawer(
      child: FractionallySizedBox(
        widthFactor: 1.0,
        heightFactor: 1.0,
        child: Container(
          color: Pallete.lightAmber,
          child: ListView(
            children: [
              Container(
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.height / 10),
                  alignment: Alignment.center,
                  child: FaIcon(
                    FontAwesomeIcons.userAlt,
                    color: Pallete.darkAmber,
                    size: MediaQuery.of(context).size.width / 3,
                  )),
              ListTile(
                title: Text(
                  "Configurações",
                  style: ThemeFonts.bigText(Pallete.darkAmber),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigate.push(Configuracoes(), context);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              ListTile(
                title: Text(
                  "Suporte",
                  style: ThemeFonts.bigText(Pallete.darkAmber),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                Navigate.push(Suporte(), context);}
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              ListTile(
                title: Text(
                  "Sair",
                  style: ThemeFonts.bigText(Pallete.darkAmber),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigate.pop(context);
                  Navigate.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
