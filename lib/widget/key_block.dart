import 'package:cripto_file/constants/colors.dart';
import 'package:cripto_file/constants/sized.dart';
import 'package:flutter/material.dart';

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
        Flexible(
          flex: 8,
          child: Center(
              child: TextButton(
            child: const Text('name key'),
            onPressed: () {},
          )),
        ),
        const Delimiter(
            EdgeInsets.only(top: 5, bottom: 5), width:Sized.widthDelimiter),
        Flexible(
          flex: 1,
          child: IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ),
        const Delimiter(
            EdgeInsets.only(top: 5, bottom: 5), width:Sized.widthDelimiter),
        Flexible(
          flex: 1,
          child: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {},
          ),
        )
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
        _Button(
              Icons.add,
              (){}
          ),

        const Delimiter(
            EdgeInsets.only(left: 5, right: 5, top:5), height: Sized.widthDelimiter,),
        Flexible(
          flex: 1,
          child: IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ),
        const Delimiter(
            EdgeInsets.only(left: 5, right: 5,top:5),height: Sized.widthDelimiter,),
        Flexible(
            flex: 8,
            child: RotatedBox(
              quarterTurns: -1,
              child: Center(
                  child: TextButton(
                child: const Text(
                  'name key',
                ),
                onPressed: () {},
              )),
            ))
      ],
    );
  }
}

typedef Press = Function();

class _Button extends StatelessWidget {
  final IconData _icon;
  final Press _press;

  const _Button(this._icon, this._press);

  @override
  Widget build(BuildContext context) {

       return Flexible(
          flex: 1,
          child:IconButton(
            icon: Icon(_icon),
            onPressed: _press,
          )
        );
  }
}

class Delimiter extends StatelessWidget {
  final EdgeInsetsGeometry _edgeInsets;
  final double? height;
  final double? width;

  const Delimiter(this._edgeInsets, {this.height, this.width,Key? key})
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
/*
*  return Wrap(
      runSpacing: 30,
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      children: text.split("").map((string) => Text(string, style: TextStyle(fontSize: 22))).toList(),
    );*/
