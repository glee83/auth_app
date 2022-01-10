
import 'package:authen_app/constants.dart';
import 'package:authen_app/screens/login/custom_text_field/custom_text_field.dart';
import 'package:flutter/material.dart';




class RoundedInputField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  
  const RoundedInputField({
    Key? key,
    required this.hintText, 
    this.icon = Icons.person, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            size: 30.0,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none
          
        ),
      ),
    );
  }
}
