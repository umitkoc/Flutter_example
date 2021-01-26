import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodys(context),
      floatingActionButton: button(context),

    );
  }

  FloatingActionButton button(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Home()));
      },
      icon: Icon(Icons.navigate_next),
      label: Text("Next"),
    );
  }

  Container bodys(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.amber[400],
    );
  }
}
