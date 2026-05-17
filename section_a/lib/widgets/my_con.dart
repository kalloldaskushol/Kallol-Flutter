 
import 'package:flutter/material.dart';
 
class MyCon extends StatelessWidget {
 
  // define variable:
  final String text;
  final Color color;
  final double height;
  final double width;
 
  const MyCon({super.key, //! super.key is used to pass the key to the parent class (StatelessWidget) and it is optional 
    //! now here parameter is required because we didn't use Null Safety, if we use Null Safety then we can make it optional by using ? and default value
    required this.text, //* Here all are parameters
    required this.color,
    required this.height,
    required this.width,
  });
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(10),
      height: height,
      width: width,
      color: color,
      child: Center(child: Text(text,)),
    );
  }
}
 
 
 
 
 