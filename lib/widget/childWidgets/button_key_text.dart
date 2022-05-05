import 'package:cripto_file/di/di.dart';
import 'package:cripto_file/rep/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/colors.dart';
import '../../generated/l10n.dart';

class BlocNameKeyText extends StatelessWidget{
  const BlocNameKeyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>CubitNameKeyText(context,fieldNameKey: Inject.single.repositoryBlocKey),
        child: const NameKeyText(),
    );
  }

}

class NameKeyText extends StatefulWidget{
  const NameKeyText({Key? key}) : super(key: key);

  @override
  State createState() =>_NameKeyText();
}

class _NameKeyText extends State<NameKeyText>{

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitNameKeyText,String>(
        builder: (BuildContext context, String text){
          return Center(
            child:  TextButton(
                onPressed: (){
                  context.read<CubitNameKeyText>().press(context);
                  },
                child: Text(text,style: const TextStyle(color:ConstantColors.colorTextKey))),
          );
        }
    );

  }
}

class CubitNameKeyText extends Cubit<String>{

  static const String keyNameKey = 'key_name_key';

  final FieldTextNameKey fieldNameKey;

  CubitNameKeyText(BuildContext context,{required this.fieldNameKey}) : super('S.of(context).key_fill'){
    fieldNameKey.registerSetterNameKey(setName);
  }

  void read() async{
    SharedPreferences p = await SharedPreferences.getInstance();
    String? name = p.getString(keyNameKey);
    if(name!=null)setName(name);
  }

  void press(BuildContext context){
    fieldNameKey.pressNameKey(context);
  }

  void setName(String name)=>emit(name);

}