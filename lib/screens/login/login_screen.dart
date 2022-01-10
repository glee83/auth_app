import 'package:authen_app/buttons/rounded_button.dart';
import 'package:authen_app/constants.dart';
import 'package:authen_app/screens/login/custom_text_field/custom_text_field.dart';
import 'package:authen_app/screens/login/custom_text_field/rounded_input.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Text('LOGIN'),
            const SizedBox(height: 3.0,),
            Image.asset('assets/images/where.png'),

            RoundedInputField(
              
              hintText: 'Enter name',
              onChanged: (value) {},
            ),

            RoundedPasswordField(
              onChanged: (value){},
            ),

            RoundedButton(
              text: "LOGIN", 
              press: (){}
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18.0
                  ),
                
                ),

                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}

class RoundedPasswordField extends StatelessWidget {

  final ValueChanged<String> onChanged;
  
  const RoundedPasswordField({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child:  TextField(
        obscureText: true,
        onChanged: onChanged,
        textAlign:  TextAlign.center,
        decoration: const InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kSecondaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none
        ),
      ),
    );
  }
}
