
import 'package:cripto_file/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// typedef Press = Function();

class CommonButton extends StatelessWidget {
  final IconData _icon;
  final VoidCallback _press;

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


