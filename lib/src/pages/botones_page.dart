import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _buttonNavigationBar(context),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: <Widget>[
          _crearBoton(Colors.blue, Icons.home, 'Home'),
          _crearBoton(Colors.purpleAccent, Icons.favorite_border, 'Love'),
        ]),
        TableRow(children: <Widget>[
          _crearBoton(Colors.cyanAccent, Icons.hearing, 'Hearing'),
          _crearBoton(Colors.lightGreen, Icons.all_inclusive, 'Infinite'),
        ]),
        TableRow(children: <Widget>[
          _crearBoton(Colors.orangeAccent, Icons.ac_unit, 'Snowflake'),
          _crearBoton(Colors.pinkAccent, Icons.wallpaper, 'Wallpaper'),
        ]),
        TableRow(children: <Widget>[
          _crearBoton(Colors.redAccent, Icons.blur_circular, 'Blur'),
          _crearBoton(Colors.indigoAccent, Icons.bubble_chart, 'Bubble'),
        ]),
        TableRow(children: <Widget>[
          _crearBoton(Colors.teal, Icons.vpn_key, 'Key'),
          _crearBoton(Colors.lime, Icons.view_list, 'List'),
        ])
      ],
    );
  }

  Widget _crearBoton(Color color, IconData icon, String text) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 0.0),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 5.0),
                CircleAvatar(
                  child: Icon(icon, color: Colors.white, size: 30.0),
                  radius: 35.0,
                  backgroundColor: color,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                  ),
                ),
                SizedBox(height: 5.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30.0), title: Container()),
        ],
      ),
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _fondoApp() {
    final gradiante = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0),
            ]),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ],
            )),
      ),
    );

    return Stack(
      children: <Widget>[gradiante, Positioned(top: -100.0, child: cajaRosa)],
    );
  }
}
