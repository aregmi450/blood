import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          BackbuttonWidget(),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Name'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.lock), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Password'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Gender'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.email), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Email'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.gps_fixed), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Location'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.phone), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Phone No.'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.opacity), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Blood Group'),
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackbuttonWidget extends StatelessWidget {
  const BackbuttonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/signup.jpg'))),
      child: Positioned(
          child: Stack(
        children: <Widget>[
          Positioned(
              top: 20,
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    'Back',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
