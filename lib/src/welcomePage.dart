import 'package:auth/src/login.dart';
import 'package:auth/src/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _WelcomePage();

}

class _WelcomePage extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal:20),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey.shade500,
                offset: Offset(2,4),
                blurRadius: 5,
                spreadRadius: 2
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.green[500], Colors.green[300]])
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                title(),
                SizedBox(
                  height: 180,
                ),
                _submitButton(),
                SizedBox(
                  height: 40,),
                _signupButton(),
                SizedBox(
                  height: 180,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


Widget title() {
  return Text(
    'FLUTTER AUTH',
    style: TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold),
  );
}

Widget _submitButton() {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Login()));
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical:13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.grey.shade500,
          offset: Offset(2,4),
          blurRadius: 5,
          spreadRadius: 2
          )
        ],
        color:Colors.white
      ),
      child: Text(
        'Login',
        style: TextStyle(fontSize: 20, color: Colors.green[500])),
    ),
  );
}

Widget _signupButton() {
  return InkWell(
    onTap: () {
 Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Signup()));
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical:13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: Colors.white, width:5),
      ),
      child: Text(
        'Register Now',
        style: TextStyle(fontSize: 20, color: Colors.white)),
    ),
  );
}

}