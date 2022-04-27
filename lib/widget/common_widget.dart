import 'package:cripto_file/constants/colors.dart';
import 'package:flutter/material.dart';

typedef Press = Function();

class CommonButton extends StatelessWidget {
  final IconData _icon;
  final Press _press;

  const CommonButton(this._icon, this._press, {Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 50,
        height: 50,
        child: IconButton(
          color: ConstantColors.colorDelimiter,
          icon: Icon(_icon),
          onPressed: _press,
        ));
  }
}

class CommonDelimiter extends StatelessWidget {
  final EdgeInsetsGeometry _edgeInsets;
  final double? height;
  final double? width;

  const CommonDelimiter(this._edgeInsets, {this.height, this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: _edgeInsets,
        child: SizedBox(
          height: height,
          width: width,
          child: Container(
            color: ConstantColors.colorDelimiter,
          ),
        ));
  }
}

class CommonTextButton extends StatefulWidget{

  final Press _press;

  const CommonTextButton(this._press,{Key? key}) : super(key: key);


  @override
  State createState() =>_StateCommonTextButton();
}

class _StateCommonTextButton extends State<CommonTextButton>{

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
          child: const Text('text field',style: TextStyle(color:ConstantColors.colorTextKey)),
          onPressed: widget._press,
        ));
  }
}
