

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InchargePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _InchargePage();

}

class _InchargePage extends State{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("充值",style: TextStyle(fontSize: 16,color: Colors.white,backgroundColor: Colors.green),),
      ),
      body: Container(
        child: Text(""),
      ),

    );
  }

}