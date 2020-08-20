import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;

  LoginPage({Key key, this.title}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    user = value;
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: 'Username',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    ))),
              ),
              width: 200,
              padding: EdgeInsets.all(16),
            ),
            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    user = value;
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    ))),
              ),
              width: 200,
              padding: EdgeInsets.all(16),
            ),
            RaisedButton(
              onPressed: () {
                validateTextField(context);
              },
              child: Text("Submit"),
              color: Colors.blue[900],
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  void validateTextField(BuildContext context) {
    print(user);
    print(password);
    if (user == null ||
        user.trim().isEmpty ||
        password == null ||
        password.trim().isEmpty) {
      AlertDialog alert = AlertDialog(
        title: Text("Alert Dialog"),
        content: Container(child: Text("Please Fill the empty textbox.")),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          )
        ],
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }
}
