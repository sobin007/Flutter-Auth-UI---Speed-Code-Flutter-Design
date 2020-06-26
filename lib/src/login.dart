import 'package:auth/src/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child:Container(
          height:MediaQuery.of(context).size.height,
          child: Stack(
            children:<Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal:20),
                child:Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: SizedBox(),
                    ),
                    title(),
                    SizedBox(
                      height: 50,
                    ),
                    _emailPasswordWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    _submitButton(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical:15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password',
                        style:TextStyle(fontSize: 14, color:Colors.black)
                      ),
                    ),
                    _divider(),
                    _facebookWidget(),
                    Expanded(
                      flex: 2,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _createAccountLabel(),
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
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),),
    );
  }

  Widget _divider() {
    return Container(
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text(
            'or',
            style:TextStyle(color: Colors.black, fontSize: 14)
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _facebookWidget() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical : 20),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2872ba),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5)
                )
              ),
              alignment: Alignment.center,
              child: Text(
                'f',
                style: TextStyle(color: Colors.white, fontSize:18, fontWeight:FontWeight.bold)
              )
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2872ba),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5)
                )
              ),
              alignment: Alignment.center,
              child:Text(
                'Login with Facebook',
                style: TextStyle(color: Colors.white, fontSize:18, fontWeight:FontWeight.bold)
              ) ,
            ),
          )
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
              'Log In',
              style: TextStyle(color: Colors.black, fontSize:14,fontWeight: FontWeight.bold)
            )
          ],
        ),
      ),
    );
  }

  Widget _createAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical:20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize:16),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>Signup()));
            },
            child: Text(
              'Register',
              style:TextStyle(fontWeight: FontWeight.w400,color:Colors.green[500],fontSize:16)
            ),)
        ],
      ),
    );
  }

}