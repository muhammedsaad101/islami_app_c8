import 'package:flutter/material.dart';

class SuraWidget extends StatelessWidget {
  String suraName;
  SuraWidget({required this.suraName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      alignment: Alignment.center,
      child: Text(suraName, style: Theme.of(context).textTheme.subtitle2,),
    );
  }
}
