import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>_SignupState();

}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal:20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: SizedBox(),
                    ),
                    title(),
                    SizedBox(height: 50,),
                    _emailPasswordWidget(),
                    SizedBox(height: 20,),
                    _submitButton(),
                    Expanded(
                      flex: 2,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter ,
                child: _loginAccountLabel(),
              ),
              Positioned(
                top: 40,
                left: 0,
                child: _backButton(),
              )
            ]
          ),
        )
      ),
    );
  }


   Widget title() {
    return Text(
      'FLUTTER AUTH',
      style: TextStyle(color: Colors.green[500],fontSize: 24, fontWeight: FontWeight.bold),);
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryWidget('Username'),
        _entryWidget('Email ID'),
        _entryWidget('Password', isPassword: true),
      ],
    );
  }

  Widget _entryWidget(String title, {bool isPassword: false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              border:InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true
            ),
          )
        ]
      ),
    );
  }

   Widget _submitButton() {
    return InkWell(
      onTap: () {

      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding:EdgeInsets.symmetric(vertical:15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.green[500],
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow> [
            BoxShadow (
              color: Colors.grey[200],
              blurRadius: 8,
              offset: Offset(2,4),
              spreadRadius: 2)
          ]),
        child: Text(
          'Register',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),),
    );
  }


  Widget _loginAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical:20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You already have an account ',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize:16),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>Signup()));
            },
            child: Text(
              'Login',
              style:TextStyle(fontWeight: FontWeight.w400,color:Colors.green[500],fontSize:16)
            ),)
        ],
      ),
    );
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom:10,top:10,left:0),
              child: Icon(Icons.keyboard_arrow_left,color: Colors.black,),
            ),
            Text(
              'Sign Up',
              style: TextStyle(color: Colors.black, fontSize:14,fontWeight: FontWeight.bold)
            )
          ],
        ),
      ),
    );
  }

}