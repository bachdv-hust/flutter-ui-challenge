import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget buildMain(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: ListView(
        children: [
          _buildProfile(),
          _buildSubTitle(),
          _buildSearchBox(),
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 60),
                  height: 600,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: Container(
                    margin: EdgeInsets.only(left: 30, top: 60, right: 30),
                    child: ListView(
                      children: [
                        _buildTileForCard(),
                        _buildTransportCard(
                            title: 'Bus',
                            image: 'assets/images/ic_car.png',
                            color: Colors.lightBlue),
                        _buildTransportCard(
                            title: 'MRT',
                            image: 'assets/images/ic_train.png',
                            color: Colors.blue),
                      ],
                    ),
                  )),
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 1,
                            color: Color(0x33000000))
                      ]),
                  child: Row(
                    children: [
                      Column(
                        children: [Text('Balance'), Text('Balance')],
                      ),
                      Column(
                        children: [Text('Balance'), Text('Balance')],
                      ),
                      Column(
                        children: [Text('Balance'), Text('Balance')],
                      ),
                      Column(
                        children: [Text('Balance'), Text('Balance')],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _buildTransportCard({String title, String image, Color color}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 170,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Container(
                  width: 70,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      "Select",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            image,
          )
        ],
      ),
    );
  }

  Widget _buildTileForCard() {
    return Text(
      "Choose your Transport",
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildSearchBox() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 30, right: 30),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          SizedBox(width: 10),
          Image.asset(
            'assets/images/ic_search.png',
            width: 20,
          ),
          SizedBox(width: 10),
          Text('Search', style: TextStyle(fontSize: 17, color: Colors.grey))
        ],
      ),
    );
  }

  Widget _buildSubTitle() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 30),
      child: Text(
        "Where you will go",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),
      ),
    );
  }

  Widget _buildProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text(
            "Hello, \nJohn Doe",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(right: 30),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(25)),
        )
      ],
    );
  }

  SizedBox _buildNavigationBar() {
    return SizedBox(
      height: 85,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.green,
        items: [
          _buildBottomNavigationItem(image: 'assets/images/ic_home.png'),
          _buildBottomNavigationItem(image: 'assets/images/ic_home.png'),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationItem({String image}) {
    return BottomNavigationBarItem(
        label: '', icon: ImageIcon(AssetImage(image)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildMain(context),
      bottomNavigationBar: _buildNavigationBar(),
    );
  }
}
