import 'package:authen_app/constants.dart';
import 'package:flutter/material.dart';



class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 20.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
       
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius:  BorderRadius.circular(20),
      ),
      child: child
    );
  }
}