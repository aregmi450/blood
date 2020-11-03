import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/TextWithIcon.dart';

class Contact extends StatelessWidget {
  Widget _selectedDonors({
    @required Color color,
    @required String name,
    @required String location,
    @required String contact,
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
            name,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextWithIcon(
            icon: Icon(
              Icons.phone,
              color: Colors.white,
            ),
            text: Text(
              contact,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            location,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DONOR INFORMATION',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
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
                    children: <Widget>[
                      _selectedDonors(
                        color: Colors.black,
                        name: 'Ramesh Sapkota',
                        contact: '9860546791',
                        location: 'Kathmandu',
                      ),
                      _selectedDonors(
                        color: Colors.black,
                        name: 'Ram Kapoor',
                        contact: '9860543091',
                        location: 'Pokhara',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       backgroundColor: Colors.white,
  //       appBar: AppBar(
  //         elevation: 0.0,
  //         backgroundColor: Colors.red[300],
  //         title: Text(
  //           'Hamro Blood',
  //           style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold),
  //         ),
  //         centerTitle: true,
  //       ),
  //       body: Container(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               'DONOR INFORMATION',
  //               textAlign: TextAlign.left,
  //               style: TextStyle(
  //                 fontSize: 30,
  //                 color: Colors.red,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             Padding(
  //               padding: EdgeInsets.only(
  //                 top: 20,
  //               ),
  //               child: Container(
  //                 height: 300,
  //                 child: GridView.count(
  //                   crossAxisCount: 2,
  //                   crossAxisSpacing: 12,
  //                   mainAxisSpacing: 8,
  //                   childAspectRatio: 1.30,
  //                   children: <Widget>[
  //                     ...donors.map((donor) {
  //                       return _selectedDonors(
  //                           color: Colors.black,
  //                           name: donor['name'],
  //                           location: donor['location'],
  //                           contact: donor['contact']);
  //                     }).toList(),
  //                   ],
  //                 ),
  //               ),
  //             )
  //           ],
  //         ),
  //       ));
  // }
}

const donors = [
  {
    'name': 'Ramesh Sapkota',
    'contact': '9860546791',
    'location': 'Kathmandu',
  },
  {
    'name': 'Ram Kapoor',
    'contact': '9860543091',
    'location': 'Pokhara',
  }
];
