import 'package:flutter/material.dart';

Widget bodyWidget(){
  return BodyWidget();
}

class BodyWidget extends StatelessWidget{

  const BodyWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}