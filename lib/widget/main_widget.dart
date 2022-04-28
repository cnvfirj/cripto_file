import 'package:cripto_file/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cripto_file/widget/bar_block.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'body_block.dart';
import 'key_block.dart';

class MainWidget extends StatelessWidget {

  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: "Encrypt File",
      home: const GroupWidget(),
    );
  }

}

class GroupWidget extends StatelessWidget {

  const GroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barWidget(),
      body: const WidgetByOrient(),
    );
  }
}

// class WidgetByOrient extends StatelessWidget{
//   const WidgetByOrient({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//    Orientation currentOrientation = MediaQuery.of(context).orientation;
//    if(currentOrientation==Orientation.portrait){
//
//    }else{
//
//    }
//   }
// }

class WidgetByOrient extends StatelessWidget {
  const WidgetByOrient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.portrait) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: widgets(5),
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: widgets(6),
          );
        }
      },

    );
  }

  List<Widget> widgets(int index) {
    return [
      Flexible(
          child: keyWidget(),
          flex:1
      ),
      Flexible(
        child: bodyWidget(),
        flex: index,
      ),
    ];
  }
}
