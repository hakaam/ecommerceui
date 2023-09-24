import 'package:ecommerceui/Screens/otp_verify_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
class OptScreen extends StatefulWidget {
  const OptScreen({super.key});

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body:SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
               children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Forgot Password',

                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold


                      ),
                    ),
                  ),
                 SizedBox(
                   height: 40,
                 ),
                 Text(
                   'Please enter your number. You will receive a OTP to create or set a new password via number',
                   style: TextStyle(fontSize: 14),
                 ),
                 SizedBox(height: 40,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter Number',
                    border: OutlineInputBorder()


                  ),


                ),
                 SizedBox(
                   height: 40,
                 ),

                 ElevatedButton(
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => OTPverifyScreen()));
                   },
                   style: ElevatedButton.styleFrom(
                       minimumSize: Size.fromHeight(55),
                       backgroundColor: Color(0xFFDB3022),
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(8))),
                   child: Text(
                     'Send Code',
                     style: TextStyle(fontSize: 18, color: Colors.white),
                   ),
                 ),



               ],


            ),
        ),


      )
      ,

    );
  }
}
