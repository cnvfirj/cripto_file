import 'package:cripto_file/constants/colors.dart';
import 'package:cripto_file/constants/sized.dart';
import 'package:flutter/material.dart';

import 'common_widget.dart';

Widget keyWidget() {
  return const Center(
    child: KeyBlock(),
  );
}

class KeyBlock extends StatelessWidget {
  const KeyBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.portrait) {
        return _Landscape();
      } else {
        return _Portrait();
      }
    });
  }
}

/*Имя ключа(создай или открой ключ).
Текст по нажатию открывается окно предлагающее создать,
открыть(из бд приложения) или получить(из другого источника) ключ*/
/*кнопка расшарить ключ*/
/*кнопка очистить базу данных ключей*/

class _Portrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Orientation.portrait
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          // flex: 8,
          child: Center(
              child: TextButton(
            child: const Text('name key',style: TextStyle(color:ConstantColors.colorTextKey)),
            onPressed: () {},
          )),
        ),
        const CommonDelimiter(EdgeInsets.only(top: 5, bottom: 5),
            width: Sized.widthDelimiter),
        CommonButton(Icons.share, () {}),
        const CommonDelimiter(EdgeInsets.only(top: 5, bottom: 5),
            width: Sized.widthDelimiter),
        CommonButton(Icons.clear, () {}),
      ],
    );
  }
}

class _Landscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Orientation.landscape
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CommonButton(Icons.clear, () {}),
        const CommonDelimiter(
          EdgeInsets.only(left: 5, right: 5),
          height: Sized.widthDelimiter,
        ),
        CommonButton(Icons.share, () {}),
        const CommonDelimiter(
          EdgeInsets.only(left: 5, right: 5),
          height: Sized.widthDelimiter,
        ),
        Expanded(
          child:Wrap(
            spacing:-6,
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            children: widgets('name key')
          )
            )
      ],
    );
  }

  List<Widget> widgets(String text){
    List<String> list = text.split('');
    return list.map((e) => Text(e,style: TextStyle(color:ConstantColors.colorTextKey),)).toList();
  }

}

/*
*  return Wrap(
      runSpacing: 30,
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      children: text.split("").map((string) => Text(string, style: TextStyle(fontSize: 22))).toList(),
    );*/
