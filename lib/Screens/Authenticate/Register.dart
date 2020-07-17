import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // TextField setup
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 10.0),
              child: Row(
                children: <Widget>[
                  FlatButton.icon(
                    icon: Icon(Icons.arrow_back),
                    label: Text(""),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Hey There !",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Container(
                width: 300.0,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text(
                      "Enter Email an Password to Register",
                      style: TextStyle(
                          fontSize: 15.0, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() => email = value);
                      },
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() => password = value);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    InkWell(
                      borderRadius: BorderRadius.circular(30.0),
                      onTap: () {},
                      child: Ink(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            // color: Colors.white,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.green),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "already part of the team?",
                      style: TextStyle(
                          fontSize: 15.0, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        borderRadius: BorderRadius.circular(30.0),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Ink(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
