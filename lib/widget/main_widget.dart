import 'package:flutter/material.dart';
import 'package:cripto_file/widget/bar_block.dart';

import 'common_block.dart';
import 'key_block.dart';

class MainWidget extends StatelessWidget{

  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "Encrypt File",
       home: GroupWidget(),
     );
  }

}

class GroupWidget extends StatelessWidget{

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

class WidgetByOrient extends StatelessWidget{
  const WidgetByOrient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return OrientationBuilder(
     builder: (BuildContext context, Orientation orientation) {
       if(orientation==Orientation.portrait){
         return Column(
           children: widgets(),
         );
       }else{
         return Row(
           children: widgets(),
         );
       }
   },

   );
  }

  List<Widget>widgets(){
    return [
      keyWidget(),
      commonWidget()
    ];
  }
}
