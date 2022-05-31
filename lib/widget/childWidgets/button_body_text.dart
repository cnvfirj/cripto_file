import 'package:flutter/material.dart';

import '../../constants/colors.dart';

// class CommonTextButton extends StatefulWidget{
//   const CommonTextButton({Key? key}) : super(key: key);
//
//
//   @override
//   State createState() =>_StateCommonText();
// }

class CommonTextButton extends StatelessWidget{


  const CommonTextButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child:  TextButton(onPressed: (){}, child: Text('widget.text',style: const TextStyle(color:ConstantColors.colorTextKey))),
      // onPressed: widget._press,
    );
  }
}