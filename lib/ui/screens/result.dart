import 'package:flutter/material.dart';
import 'package:universal_app/models/user.dart';

class Result extends StatelessWidget {
  final User user;

  Result({this.user});
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Account creation succeed!', style: TextStyle(fontSize: 35)),
            Text('Team Name : ${user.teamName}',
                style: TextStyle(fontSize: 22)),
            Text('First Name : ${user.firstName}',
                style: TextStyle(fontSize: 22)),
            Text('Last Name : ${user.lastName}',
                style: TextStyle(fontSize: 22)),
            Text('Mail : ${user.mailAddress}', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}
