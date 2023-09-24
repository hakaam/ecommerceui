import 'package:flutter/material.dart';
class ContainerButtonModel extends StatelessWidget {
  const ContainerButtonModel({super.key, this.bgColor, this.containerWidth, required this.itex});

  final Color? bgColor;
  final double? containerWidth;
  final String itex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor

      ),
      child: Center(
        child: Text(
              itex,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18


            ),


        ),
      ),


    );
  }
}
