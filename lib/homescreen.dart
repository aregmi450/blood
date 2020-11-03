import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget _selectedCleaning({
    @required String images,
    @required String tittle,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.only(
        left: 20,
      ),
      height: 120,
      width: 240,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(images),
          fit: BoxFit.fitWidth,
        ),
        boxShadow: [
          BoxShadow(blurRadius: 6.0),
        ],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tittle,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

// giving shape to the box containing the images
  Widget _selectedGroups({
    @required String image,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
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
          padding: EdgeInsets.only(left: 10, top: 10),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'BLOOD BANKS PROVINCE WISE',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 30,
                ),
                child: Row(
                  children: [
                    _selectedCleaning(
                      images: 'assets/prov1.jpg',
                      tittle: 'Province 1',
                    ),
                    _selectedCleaning(
                      images: 'assets/prov2.jpg',
                      tittle: 'Province 2',
                    ),
                    _selectedCleaning(
                      images: 'assets/prov3.jpg',
                      tittle: 'Bagmati Province',
                    ),
                    _selectedCleaning(
                      images: 'assets/prov4.jpg',
                      tittle: 'Gandaki Province',
                    ),
                    _selectedCleaning(
                      images: 'assets/prov5.jpg',
                      tittle: 'Lumbini Province',
                    ),
                    _selectedCleaning(
                      images: 'assets/prov6.jpg',
                      tittle: 'Karnali Province',
                    ),
                    _selectedCleaning(
                      images: 'assets/prov7.jpg',
                      tittle: 'Sudurpaschim Province',
                    ),
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
                    'BLOOD GROUPS',
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
                        children: [
                          _selectedGroups(
                            image: 'assets/a-pos.jpg',
                          ),
                          _selectedGroups(
                            image: 'assets/a-neg.jpg',
                          ),
                          _selectedGroups(
                            image: 'assets/b-pos.jpg',
                          ),
                          _selectedGroups(
                            image: 'assets/b-neg.jpg',
                          ),
                          _selectedGroups(image: 'assets/ab-pos.jpg'),
                          _selectedGroups(
                            image: 'assets/ab-neg.jpg',
                          ),
                          _selectedGroups(
                            image: 'assets/o-pos.jpg',
                          ),
                          _selectedGroups(
                            image: 'assets/o-neg.jpg',
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
