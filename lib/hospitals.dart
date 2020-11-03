import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'HOSPITAL CONTACTS',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            DataTable(
              columns: <DataColumn>[
                DataColumn(
                  label: Text(
                    'Name',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Contact',
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Sarah')),
                    DataCell(Text('9844509832')),
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
