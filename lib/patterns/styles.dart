import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:republish/controller/navigator.dart';
import 'package:republish/estudante/anuncio-republica.dart';
import 'package:republish/estudante/chat-estudante.dart';
import '../models/UI-button.dart';

abstract class Pallete {
  static Color black = Colors.black;
  static Color lighterBlack = Colors.grey[500];
  static Color lightGreen = Colors.green[200];
  static Color darkGreen = Colors.green[600];
  static Color lightPurple = Colors.purple[100];
  static Color strongPurple = Colors.purple[400];
  static Color darkAmber = Colors.amber[500];
  static Color lightAmber = Colors.amber[100];
  static Color lightGrey = Colors.grey[50];
  static Color darkGrey = Colors.grey[600];
  static Color blue = Colors.blue;
  static Color white = Colors.white;
  static Color red = Colors.red[400];
  static Color fadingWhite = Color.fromRGBO(255, 255, 255, 0.5);
}

abstract class BoxDecorations {
  static BoxDecoration roundedBorders(Color color) {
    return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      color: color,
    );
  }

static BoxDecoration allRounded(Color color) {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    );
  }

  static BoxDecoration boxGreenDecorationGradient = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Pallete.lightGreen, Pallete.darkGreen]));
  static BoxDecoration boxPurpleDecorationGradient = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Pallete.lightPurple, Pallete.strongPurple]));
  static BoxDecoration boxWhiteDecorationGradient = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Pallete.white, Pallete.darkGrey]));
}

abstract class ThemeFonts {
  static const TextStyle titleStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 42);
  static TextStyle bigText(Color color) {
    return TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 22);
  }

  static const TextStyle buttonText =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);
  static TextStyle smallText(Color color, bool bold) {
    return TextStyle(
      color: color,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      fontSize: 15,
    );
  }

  static const TextStyle smallerFadingText = TextStyle(
      color: Color.fromRGBO(255, 255, 255, 0.5),
      fontWeight: FontWeight.bold,
      fontSize: 15);
}

abstract class TextFields {
  static Builder commomTextField(String label) {
    return new Builder(
      builder: (BuildContext context) {
        return new Container(
          alignment: Alignment.center,
          child: TextField(
            style: TextStyle(color: Colors.black, fontSize: 18),
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.center,
            decoration: TextFieldStyles.commomTextFormFieldDecoration(label),
          ),
        );
      },
    );
  }

  // please note that this method is supposed to have a bool OBSCURE to
  // hide the formfield, and a setState method to switch the bool value
  static Builder commomObscureField(String label, bool obscure, Function f) {
    return new Builder(builder: (BuildContext context) {
      return new Container(
        alignment: Alignment.center,
        child: TextField(
          style: TextStyle(color: Colors.black, fontSize: 18),
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.center,
          obscureText: obscure,
          decoration: TextFieldStyles.textFormFieldDecorationWithIconButton(
              label, FontAwesomeIcons.eye, f),
        ),
      );
    });
  }
}

abstract class ThemeButtons {
  static RaisedButton strongGreenButton(String text, Function f) {
    return RaisedButton(
        onPressed: f,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: ThemeFonts.buttonText,
          ),
        ),
        color: Pallete.lightGreen,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)));
  }

  // please use FontAwesomeIcons in the IconData
  static RaisedButton customColorAndIconButton(
      String text, Color color, IconData icon, Function f) {
    return RaisedButton(
        onPressed: f,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              FaIcon(
                icon,
                color: Colors.white,
              ),
              Text(
                text,
                style: ThemeFonts.smallText(Pallete.white, true),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
        color: color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)));
  }

  static RaisedButton customColorButton(String text, Color color, Function f) {
    return RaisedButton(
        onPressed: f,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: ThemeFonts.smallText(Pallete.white, true),
          ),
        ),
        color: color,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)));
  }

  static Builder reallyBIGButton(
      Function f, IconData icon, String label, Color color) {
    return new Builder(
      builder: (BuildContext context) {
        var buttonHeight = MediaQuery.of(context).size.height / 3;
        var buttonWidth = MediaQuery.of(context).size.width / 3;
        return new ButtonTheme(
          minWidth: buttonWidth,
          height: buttonHeight,
          child: RaisedButton(
            color: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            onPressed: f,
            child: Container(
              height: buttonHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(
                    icon,
                    color: Colors.white,
                    size: buttonWidth,
                  ),
                  Text(
                    label,
                    style: ThemeFonts.buttonText,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

abstract class TextFieldStyles {
  static InputDecoration commomTextFormFieldDecoration(String label) {
    return InputDecoration(
        border: new OutlineInputBorder(
            gapPadding: 1,
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(20)),
        filled: true,
        fillColor: Pallete.fadingWhite,
        hintText: label,
        hintStyle: TextStyle(color: Colors.white));
  }

  static InputDecoration textFormFieldDecorationWithIconButton(
      String label, IconData icon, Function f) {
    return InputDecoration(
        border: new OutlineInputBorder(
            gapPadding: 1,
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(20)),
        filled: true,
        fillColor: Pallete.fadingWhite,
        hintText: label,
        suffixIcon:
            IconButton(icon: FaIcon(icon), onPressed: f, color: Colors.white),
        hintStyle: TextStyle(color: Colors.white));
  }
}

abstract class CustomIcons {
  static customIconButton(IconData icon, Color color, Function f) {
    return IconButton(
        icon: icon is FontAwesomeIcons
            ? FaIcon(
                icon,
                color: color,
                size: 40,
              )
            : Icon(icon, color: color, size: 40),
        onPressed: f);
  }
}

abstract class Blocks {
  static Builder bigIcon(IconData icon, Color color) {
    return new Builder(builder: (BuildContext context) {
      return Container(
          child: icon is FontAwesomeIcons
              ? FaIcon(icon,
                  color: color,
                  size: MediaQuery.of(context).size.height / 8)
              : Icon(icon,
                  color: color,
                  size: MediaQuery.of(context).size.height / 8));
    });
  }

  static Row dividerWithText(String label) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: Colors.white,
          thickness: 1.0,
        )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              label,
              style: ThemeFonts.smallerFadingText,
            )),
        Expanded(
            child: Divider(
          color: Colors.white,
          thickness: 1.0,
        )),
      ],
    );
  }

  static Builder footer(List<UIIconButton> icons, int activeIcon) {
    return new Builder(
      builder: (BuildContext context) {
        return Container(
            alignment: Alignment.center,
            color: Pallete.strongPurple,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 10,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (var item in icons)
                    CustomIcons.customIconButton(
                        item.icon,
                        activeIcon == icons.indexOf(item)
                            ? Pallete.lightAmber
                            : Pallete.white,
                        item.f)
                ]));
      },
    );
  }

  static Builder studentVendorDorm(
      String title, String text, String location, String price) {
    return new Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Navigate.push(AnuncioRepublica(), context);
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecorations.roundedBorders(Pallete.lightGrey),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(
                      FontAwesomeIcons.hotel,
                      color: Pallete.lightGreen,
                      size: MediaQuery.of(context).size.width / 6,
                    ),
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: ThemeFonts.smallText(Pallete.black, true),
                      ),
                      Text(
                        text,
                        style: ThemeFonts.smallText(Pallete.black, false),
                      ),
                      Text(
                        "R\$ $price",
                        style: ThemeFonts.smallText(Pallete.lightGreen, true),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.place,
                            color: Pallete.darkAmber,
                          ),
                          Expanded(
                            child: Text(
                              location,
                              style:
                                  ThemeFonts.smallText(Pallete.darkAmber, true),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  flex: 7,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Builder studentMessagesChat(String title, String text, bool online) {
    return new Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Navigate.push(ChatEstudante(), context);
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecorations.roundedBorders(Pallete.lightGrey),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(
                      FontAwesomeIcons.hotel,
                      color: Pallete.darkAmber,
                      size: MediaQuery.of(context).size.width / 6,
                    ),
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: ThemeFonts.smallText(Pallete.black, true),
                      ),
                      Text(
                        text,
                        style:
                            ThemeFonts.smallText(Pallete.lighterBlack, false),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: online ? Pallete.lightGreen : Pallete.red,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              online ? 'Online' : 'Offline',
                              style: ThemeFonts.smallText(Pallete.black, true),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  flex: 7,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Builder chatBubble(String text, bool meOrHim) {
    return new Builder(
      builder: (BuildContext context) {
        return Row(
          mainAxisAlignment:
              meOrHim ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecorations.roundedBorders(
                    meOrHim ? Pallete.lightGreen : Pallete.lightAmber),
                child: Text(
                  text,
                  style: ThemeFonts.smallText(Colors.black, false),
                )),
          ],
        );
      },
    );
  }

  static Builder configTile(String title, String text, IconData icon) {
    return new Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          child: Container(
            margin: EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecorations.roundedBorders(Pallete.lightGrey),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: icon is FontAwesomeIcons
                        ? FaIcon(
                            icon,
                            color: Pallete.darkGrey,
                            size: MediaQuery.of(context).size.width / 6,
                          )
                        : Icon(icon,
                            color: Pallete.darkGrey,
                            size: MediaQuery.of(context).size.width / 6),
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: ThemeFonts.bigText(Pallete.black),
                      ),
                      Text(
                        text,
                        style: ThemeFonts.smallText(Pallete.black, false),
                      ),
                    ],
                  ),
                  flex: 7,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

abstract class Spacing {
  static Builder height40() {
    return new Builder(
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        );
      },
    );
  }

  static Builder height80() {
    return new Builder(
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        );
      },
    );
  }

  static Builder height16() {
    return new Builder(
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 16,
        );
      },
    );
  }
}
