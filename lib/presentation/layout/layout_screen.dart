import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constrains){
          if(constrains.maxWidth >= 600){
            return Container(
              width: 300,
              height: 300,
              color: Colors.red,
            );
          }
          return Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
