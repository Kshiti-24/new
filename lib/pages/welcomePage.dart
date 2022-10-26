import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_ui/utils/routes.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String name="";
  bool changeButton=false;
  final _formKey = GlobalKey<FormState>();
  moveToOtp(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.otpRoute);
  }
  moveToNewLogin(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.newloginRoute);
  }
  moveToAddLogin(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.addloginRoute);
  }
  moveToSignIn(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.signInRoute);
  }
  moveToLogin(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.loginRoute);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.yellow,Colors.orange,Colors.red]
              )
          ),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 5,),
                  Image.asset('assets/images/welcome.png'),
                  SizedBox(height: 0,),
                  Text('My First App',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 450,
                    width: 325,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15,),
                        Text('Namaste',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Select any one of them',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black26
                          ),
                        ),
                        SizedBox(height: 15,),
                        // ElevatedButton(
                        Material(
                          child: GestureDetector
                            (
                            child: Container
                              (
                              alignment: Alignment.center,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.tealAccent,
                                        Colors.teal,
                                      ]
                                  )
                              ),
                              child: InkWell(
                                onTap: () => moveToLogin(context),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(11.0),
                                  child: Text('Login using email',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        // ElevatedButton(
                        Material(
                          child: GestureDetector
                            (
                            child: Container
                              (
                              alignment: Alignment.center,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.tealAccent,
                                        Colors.teal,
                                      ]
                                  )
                              ),
                              child: InkWell(
                                onTap: () => moveToNewLogin(context),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(11.0),
                                  child: Text('Login using OTP',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Material(
                          child: GestureDetector
                            (
                            child: Container
                              (
                              alignment: Alignment.center,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.tealAccent,
                                        Colors.teal,
                                      ]
                                  )
                              ),
                              child: InkWell(
                                onTap: () => moveToSignIn(context),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(11.0),
                                  child: Text('Sign Up',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Material(
                          child: GestureDetector
                            (
                            child: Container
                              (
                              alignment: Alignment.center,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.tealAccent,
                                        Colors.teal,
                                      ]
                                  )
                              ),
                              child: InkWell(
                                onTap: () => moveToAddLogin(context),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(11.0),
                                  child: Text('Login using Google',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
