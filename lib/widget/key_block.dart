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
            child:TextButton(
              child: const Text('name key'),
              onPressed: () {},
            )
          ),
        ),
        Flexible(
          flex: 1,
          child: IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ),
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
        Flexible(
          flex: 1,
          child: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {},
          ),
        ),
        Flexible(
          flex: 1,
          child: IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ),
        Flexible(
          flex: 8,
            child: RotatedBox(
          quarterTurns: -1,
          child: Center(
          child:TextButton(
            child: const Text(
              'name key',
            ),
            onPressed: () {},
          )
          ),
        ))
      ],
    );
  }
}
