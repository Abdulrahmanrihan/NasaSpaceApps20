import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';


class MainPageStateful extends StatefulWidget{
  @override
  MainPage createState() => MainPage();
}

// ignore: camel_case_types
class MainPage extends State<MainPageStateful>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              margin: EdgeInsets.only(bottom: 40.0),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                      NetworkImage("https://via.placeholder.com/150")
                  ),
                ),
              ),
              accountName: new Container(
                  child: Text(
                    'Abdulrahman Hesham',
                    style: TextStyle(color: Colors.black),
                  )),
              accountEmail: new Container(
                  child: Text(
                    'abdulrahmanrihan@gmail.com',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.indigo[900],
              ),
              title: Text('Personal Information'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.indigo[900],
              ),
              title: Text('Saved'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.indigo[900],
              ),
              title: Text('FAQ'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.indigo[900],
              ),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.indigo[900],
              ),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: Container(
        color: Colors.white30,
        padding: EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hi Abdulrahman!',
                  style: TextStyle(
                    fontFamily: 'georgia',
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Text(
                      'Which species are you interested to know about today?\n',
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'georgia',
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                    ),
                    // ignore: missing_return
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'You have got to search something';
                      }
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  width: 100,
                  child: Card(
                    color: Colors.indigo[900],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Locations',
                          style: TextStyle(
                            fontFamily: 'georgia',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.indigo[900],
                ),
                InkWell(
                  child: Text(
                    "Egypt",
                    style: TextStyle(
                      fontFamily: 'georgia',
                      color:  Colors.black,
                    ),
                  ),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.indigo[900],
                ),
                InkWell(
                  child: Text(
                    "Spain",
                    style: TextStyle(
                      fontFamily: 'georgia',
                      color:  Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SfMaps(
                    layers: [
                      MapShapeLayer(
                        delegate: const MapShapeLayerDelegate(
                          shapeFile: 'assets/world_map.json',
                          shapeDataField: 'STATE_NAME',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                    'Type'
                ),
              ],
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 130,
                    child: Card(
                      color: Colors.indigoAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.grass,
                            color: Colors.white,
                          ),
                          Text(
                            'Quercus Robur',
                            style: TextStyle(
                              fontFamily: 'georgia',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 160,
                    child: Card(
                      color: Colors.indigoAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.grass,
                            color: Colors.white,
                          ),
                          Text(
                            'Epiphytic bryophite',
                            style: TextStyle(
                              fontFamily: 'georgia',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 130,
                    child: Card(
                      color: Colors.indigoAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.grass,
                            color: Colors.white,
                          ),
                          Text(
                            'Betula Pendula',
                            style: TextStyle(
                              fontFamily: 'georgia',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 140,
                    child: Card(
                      color: Colors.indigoAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.grass,
                            color: Colors.white,
                          ),
                          Text(
                            'Fagus Sylvatica',
                            style: TextStyle(
                              fontFamily: 'georgia',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 130,
                    child: Card(
                      color: Colors.indigoAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.grass,
                            color: Colors.white,
                          ),
                          Text(
                            'Tilia Cordata',
                            style: TextStyle(
                              fontFamily: 'georgia',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
              height: 30,
            ),
            Expanded(
              child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.black26,
              child: Row(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'georgia',
                          fontSize: 13,
                        ),
                        children:[
                          TextSpan(
                            text: 'Quercus robur\n\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: 'Optimum Temperature: 25 °C\n\n',
                            style: TextStyle(
                              color: Colors.indigo[900],
                            ),
                          ),
                          TextSpan(
                            text: """Distribution: The Quercus robur (pedunculate \n oak) is commonly found in Europe, \nincluding almost the whole of Western Europe. 
                              \nEcological Importance: Due to their strength \nand Tannic acids found in barks that protect \nthem from insects, they are one of most \nimportant, long-lived species of trees in many \necosystems. In fact, it is one of the most \neconomically and ecologically important deciduous \nforest tree species in Europe. They support insects \nand other wildlife with food due to their acorns.\n In fact, Q. robur supports the highest \nbiodiversity of insect herbivores of any British plant.""",
                            style: TextStyle(
                              color: Colors.indigo[900],
                            ),
                          ),
                        ],
                      ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.scanner),
            backgroundColor: Colors.grey,
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grass),
            backgroundColor: Colors.grey,
            label: 'Seeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            backgroundColor: Colors.grey,
            label: 'Species',
          ),
        ],
      ),
    );
  }
}