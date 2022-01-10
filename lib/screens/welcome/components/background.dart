import 'package:flutter/material.dart';


class Backgroun extends StatelessWidget {
  final Widget child;
  const Backgroun({ Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned( 
            top: 0.0,
            left: 0.0,
            
            child: Image.asset(
              'assets/images/top.png',
              width: size.width * 0.3,
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            
            child: Image.asset(
              'assets/images/bottom.png',
            width: size.width * 0.3
            ),
          ),

          child,
        ],
      ),
    );
  }
}