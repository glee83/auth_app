
import 'package:authen_app/buttons/rounded_button.dart';
import 'package:authen_app/constants.dart';
import 'package:authen_app/screens/login/login_screen.dart';
import 'package:authen_app/screens/welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:authen_app/screens/welcome/components/body.dart';
class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return  Backgroun(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            const Text(
              'Welcome to Auth',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),
      
            SvgPicture.asset('assets/icons/chat.svg',
              height: size.height * 0.3,
            ),
      
            const SizedBox(
              height: 10.0,
            ),

            RoundedButton(
              text: 'LOGIN',
              press: (){

                
              }
            ),

            RoundedButton(
              text: 'SIGN UP', 
              press: (){},
              color: kPrimaryLightColor,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
