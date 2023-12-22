// ignore_for_file: prefer_const_declarations, no_leading_underscores_for_local_identifiers, prefer_const_constructors

import 'package:anas_apa_/screen2.dart';
import 'package:flutter/material.dart';
import 'package:anas_apa_/splash.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});
  final _ussernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _formkey=GlobalKey<FormState>();
  static const String fixedussername = 'najla';
 static const String fixedPassword = '1234';
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 179, 203),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                width: 400,
                height: 400,
                color: const Color.fromARGB(255, 241, 136, 171),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Instagram',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 50,
                              color: Colors.pink,
                            ),
                          ),
                          TextFormField(
                            validator: (value){
                              if (value==null||value.isEmpty) {
                                return 'value is empty';
                                
                              }else{
                                return null;
                              }
                            },
                            controller: _ussernamecontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: 'User Name',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Enter Your Name or Email ID',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            // obscureText: true,
                          ),
                          SizedBox(height: 20), // Add some space between fields
                          TextFormField(
                            validator: (value){
                              if (value==null||value.isEmpty) {
                                return 'value is empty';
                                
                              }else{
                                return null;
                              }
                            },
                            controller: _passwordcontroller,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Enter Your Password',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 25),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.pink)),
                              onPressed: () {
                                _formkey.currentState!.validate();    
                                    if (_passwordcontroller.text == fixedPassword && _ussernamecontroller.text == fixedussername) {
                                // Password is correct, navigateto the next screen
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => screen2(),
                                  ),
                                );
                              } else {
                                // Password is incorrect, show a SnackBar
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    margin: const EdgeInsets.all(15),
                                    backgroundColor:
                                        const Color.fromARGB(255, 247, 244, 245),
                                    content: const Text(
                                      'Incorrect password. Please try again.',
                                      style: TextStyle(
                                        color: Colors.pink,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                  ),
                                );
                              }
                            


                                // Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                                //   return screen2();
                                // }));
                                checkLogin(context);
                              },
                              child: Text(
                                'Done',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 237, 232, 234),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final _ussername = _ussernamecontroller.text;
    final _password = _passwordcontroller.text;
    if (_ussername == fixedussername && _password == fixedPassword) {
      //go to home
    } else {
      final errorMessage = 'the ussername or password is incorrect';

      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(15),
        backgroundColor: const Color.fromARGB(255, 247, 244, 245),
        content: Text(
          errorMessage,
          style: TextStyle(
              color: Colors.pink, fontStyle: FontStyle.italic, fontSize: 22),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      ));
      // showDialog(
      //     // barrierColor: Colors.pink,
      //     context: (ctx),
      //     builder: (ctx1) {
      //       return AlertDialog(
      //         title: Text(
      //           'error',
      //           style: TextStyle(color: Colors.black),
      //         ),
      //         content: Text(
      //           _errorMessage,
      //           style: TextStyle(color: const Color.fromARGB(255, 11, 11, 11)),
      //         ),
      //         actions: [
      //           TextButton(
      //               onPressed: () {
      //                 Navigator.of(ctx).pop();
      //               },
      //               child: Text(
      //                 'Close',
      //                 style: TextStyle(
      //                   backgroundColor: Colors.pink,
      //                   color: Color.fromARGB(255, 242, 242, 242),
      //                 ),
      //               )
      //               )
      //         ],
      //       );
      //     }
      //     );
    }
  }
}
