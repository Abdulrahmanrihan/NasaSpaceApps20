import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'loginPage.dart';
import 'mainPage.dart';

void main() => runApp(MyApp());

launchFaceURL() async {
  const url = 'https://facebook.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchTwitterURL() async {
  const url = 'https://twitter.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchInstURL() async {
  const url = 'https://instagram.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatefulWidget{
  @override
  WelcomePage createState() => WelcomePage();
}


class WelcomePage extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        'LoginPage': (BuildContext context) => new LoginPageStateful(),
      },
      home: Builder(
        builder: (context) => Scaffold(
          body: new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/welcome.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.all(60),
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      height: 180,
                      width: 200,
                      image: AssetImage('images/apollologo.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'A world where open sourced biodiversity information is available for all',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        maxLines: 4,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'georgia',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(25.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.indigo[900],
                      onPressed: () => Navigator.of(context).pushNamed('LoginPage'),
                      child: Text(
                        'START YOUR JOURNEY',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'georgia',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}