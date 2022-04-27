import 'package:cripto_file/constants/sized.dart';
import 'package:flutter/material.dart';

import 'common_widget.dart';

Widget bodyWidget(){
  return const BodyWidget();
}

class BodyWidget extends StatelessWidget{

  const BodyWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return _Portrait();
          } else {
            return _Landscape();
          }
        });
  }
}

class _Portrait extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CommonDelimiter(
          EdgeInsets.only(left: 5, right: 5),
          height: Sized.widthDelimiter,
        ),
        const Expanded(
          child: CommonText(),
        ),
        const CommonDelimiter(
          EdgeInsets.only(left: 5, right: 5),
          height: Sized.widthDelimiter,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CommonDelimiter(
              EdgeInsets.only(top: 5, bottom: 5),
              width: Sized.widthDelimiter,
                height: Sized.icon
            ),
            CommonButton(Icons.arrow_downward,(){}),
            const CommonDelimiter(
              EdgeInsets.only(top: 5, bottom: 5),
              width: Sized.widthDelimiter,
                height: Sized.icon
            ),
            CommonButton(Icons.arrow_upward,(){}),
            const CommonDelimiter(
              EdgeInsets.only(top: 5, bottom: 5),
              width: Sized.widthDelimiter,
                height: Sized.icon
            ),
            CommonButton(Icons.add,(){}),
            const CommonDelimiter(
              EdgeInsets.only(top: 5, bottom: 5),
              width: Sized.widthDelimiter,
                height: Sized.icon
            ),
            CommonButton(Icons.clear,(){}),
            const CommonDelimiter(
              EdgeInsets.only(top: 5, bottom: 5),
              width: Sized.widthDelimiter,
                height: Sized.icon
            )
          ],
        ),
        const CommonDelimiter(
          EdgeInsets.only(left: 5, right: 5),
          height: Sized.widthDelimiter,
        ),
        const Expanded(
          child: CommonText(),
        ),
        const CommonDelimiter(
          EdgeInsets.only(left: 5, right: 5),
          height: Sized.widthDelimiter,
        )
      ],
    );
  }
}

class _Landscape extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CommonDelimiter(
          EdgeInsets.only(top: 5, bottom: 5),
          width: Sized.widthDelimiter,
        ),
        const Expanded(
          child: CommonText(),
        ),
        const CommonDelimiter(
          EdgeInsets.only(top: 5, bottom: 5),
          width: Sized.widthDelimiter,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CommonDelimiter(
              EdgeInsets.only(left: 5, right: 5),
              height: Sized.widthDelimiter,
                width: Sized.icon
            ),
            CommonButton(Icons.add,(){}),
            const CommonDelimiter(
              EdgeInsets.only(left: 5, right: 5),
              height: Sized.widthDelimiter,
                width: Sized.icon
            ),
            CommonButton(Icons.add,(){}),
            const CommonDelimiter(
              EdgeInsets.only(left: 5, right: 5),
              height: Sized.widthDelimiter,
                width: Sized.icon
            ),
            CommonButton(Icons.add,(){}),
            const CommonDelimiter(
              EdgeInsets.only(left: 5, right: 5),
              height: Sized.widthDelimiter,
                width: Sized.icon
            ),
            CommonButton(Icons.add,(){}),
            const CommonDelimiter(
              EdgeInsets.only(left: 5, right: 5),
              height: Sized.widthDelimiter,
                width: Sized.icon
            )
          ],
        ),
        const CommonDelimiter(
          EdgeInsets.only(top: 5, bottom: 5),
          width: Sized.widthDelimiter,
        ),
        const Expanded(
          child: CommonText(),
        ),
        const CommonDelimiter(
          EdgeInsets.only(top: 5, bottom: 5),
          width: Sized.widthDelimiter,
        )
      ],
    );
  }
}



