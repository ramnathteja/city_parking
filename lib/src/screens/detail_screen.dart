import 'package:flutter/material.dart';

//todo: have to create a page which contains widgets listed from "Image; textFields; action buttons"
//have to pass data from the home screen to spot screen regarding the which marker is pressed;

class Detail extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parking Spot something!!"),
      ),
      body: Container(
        margin: EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            Image.network('https://via.placeholder.com/600/92c952'),
            Padding(
              child: Text("get the data and display here"),
              padding: EdgeInsets.only(
                top: 5.0,
              ),
            ),
            Padding(
              child: Text("get 2the data and display here"),
              padding: EdgeInsets.only(
                top: 5.0,
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //       Navigator.pop(context);// Navigate back to first route when tapped.
      //     },
      //     child: Text('Go back!'),
      //   ),
      // ),
    );
  }
}
