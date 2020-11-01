import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget _selectedCleaning({
    @required Color color,
    @required String tittle,
    @required String subtittle,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.only(
        left: 20,
      ),
      height: 120,
      width: 240,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tittle,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subtittle,
            style: TextStyle(
              fontSize: 19,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }

  Widget _selectedGroups({
    @required String image,
    @required String name,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red[300],
        title: Text(
          'Hamro Blood',
          style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
          child: Container(
        height: 800,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.only(left: 30, top: 30),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Text(
                'BLOOD GROUPS',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 30,
                ),
                child: Row(
                  children: [
                    _selectedCleaning(
                        color: Colors.red,
                        tittle: 'A+',
                        subtittle: 'Second common blood type'),
                    _selectedCleaning(
                        color: Colors.amber,
                        tittle: 'A-',
                        subtittle: 'Powerful blood type'),
                    _selectedCleaning(
                        color: Colors.red,
                        tittle: 'B+',
                        subtittle: 'Powerful blood type'),
                    _selectedCleaning(
                        color: Colors.red,
                        tittle: 'B+',
                        subtittle: 'Powerful blood type'),
                    _selectedCleaning(
                        color: Colors.red,
                        tittle: 'B-',
                        subtittle: 'Powerful blood type'),
                    _selectedCleaning(
                        color: Colors.red,
                        tittle: 'AB-',
                        subtittle: 'Powerful blood type'),
                    _selectedCleaning(
                        color: Colors.red,
                        tittle: 'AB+',
                        subtittle: 'Powerful blood type'),
                    _selectedCleaning(
                        color: Colors.red,
                        tittle: 'O-',
                        subtittle: 'Powerful blood type'),
                    _selectedCleaning(
                        color: Colors.red,
                        tittle: '0+',
                        subtittle: 'Powerful blood type'),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DONATOR GROUPS',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Container(
                      height: 300,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1.30,
                        children: [
                          _selectedGroups(
                            image: 'assets/a-pos.jpg',
                            name: '30%',
                          ),
                          _selectedGroups(
                            image: 'assets/a-neg.jpg',
                            name: '20%',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
