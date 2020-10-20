import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/patterns/styles.dart';

class AnuncioRepublica extends StatefulWidget {
  @override
  _AnuncioRepublicaState createState() => _AnuncioRepublicaState();
}

class _AnuncioRepublicaState extends State<AnuncioRepublica> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
          child: Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 56),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecorations.boxPurpleDecorationGradient,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width / 20),
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'Casa do Arthur',
                              style: ThemeFonts.bigText(Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FaIcon(FontAwesomeIcons.hotel,
                                color: Pallete.lightGreen,
                                size: MediaQuery.of(context).size.width / 2),
                            SizedBox(
                              height: 20,
                            ),
                            Text('R\$ 100',
                                style: ThemeFonts.bigText(Colors.green)),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.chat,
                                        color: Pallete.darkGrey),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: FaIcon(FontAwesomeIcons.solidHeart,
                                        color: Pallete.darkGrey),
                                    onPressed: () {},
                                  ),
                                ]),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.place, color: Pallete.darkAmber),
                                  Expanded(
                                    child: Text(
                                      'Rua dos Miosótis, 810, próximo ao SEFAP',
                                      style: ThemeFonts.smallText(
                                          Pallete.darkAmber, true),
                                    ),
                                  )
                                ]),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Então essa aqui é minha moradia da pra ver né show top texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto',
                              style:
                                  ThemeFonts.smallText(Pallete.darkGrey, false),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
