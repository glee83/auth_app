
import 'package:authen_app/constants.dart';
import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  
  final String text;
  final Function press;
  final Color color;
  final Color textColor;
  
  const RoundedButton({
    Key? key,
    
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white

  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size; 
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
      width: size.width * 0.8,
    
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
       color:color,
        borderRadius: BorderRadius.circular(50),
      ),
      child:  TextButton(
        onPressed: press(),
        child: Text(
          text,
          style: TextStyle(
            color: textColor
          )
        ),
      ),
    );
  }
}