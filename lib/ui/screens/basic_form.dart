import 'dart:async';

import 'package:flutter/material.dart';
import 'package:universal_app/models/user.dart';
import 'package:universal_app/ui/screens/result.dart';

class MyBasicForm extends StatefulWidget {
  @override
  MyBasicFormState createState() {
    return MyBasicFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyBasicFormState extends State<MyBasicForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  User _user = User();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Team Name'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your Team Tag';
                }
                return null;
              },
              onSaved: (val) => setState(() => _user.teamName = val),
            ),
            Row(
              children: <Widget>[
                new Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                    onSaved: (val) => setState(() => _user.firstName = val),
                  ),
                ),
                new Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                    onSaved: (val) => setState(() => _user.lastName = val),
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Mail', hintText: 'geronimo@mifa.com'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your e-mail address';
                }
                return null;
              },
              onSaved: (val) => setState(() => _user.mailAddress = val),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Phone Number', hintText: '+33618221485'),
              keyboardType: TextInputType.phone,
              onSaved: (val) => setState(() => _user.phoneNnumber = val),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                    Timer(Duration(seconds: 2), () {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                        builder: (context) => Result(user: this._user),
                      ));
                    });
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
