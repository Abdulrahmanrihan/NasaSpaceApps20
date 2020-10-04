import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mainPage.dart';

class LoginPageStateful extends StatefulWidget{
  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<LoginPageStateful> {

  bool clicked = false;
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        'MainPage': (BuildContext context) => new MainPageStateful(),
      },
      home: Builder(
        builder: (context) => Scaffold(
              body: new Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/registration.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          height: 130,
                          width: 150,
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
                            'Unleash the best of you!',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            maxLines: 2,
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
                      padding: EdgeInsets.all(35.0),
                    ),
                    Form(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: <Widget>[
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: 'E-mail',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'georgia',
                              ),
                            ),
                            onFieldSubmitted: (_) {
                              FocusScope.of(context).requestFocus(
                                  passwordFocusNode);
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontFamily: 'georgia',
                                color: Colors.white,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            focusNode: passwordFocusNode,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.all(25.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.indigo[900],
                          onPressed: () =>
                              Navigator.of(context).pushNamed('MainPage'),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontFamily: 'georgia',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "Don\'t have an account? sign up here",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'georgia',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}