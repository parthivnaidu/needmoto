import 'package:flutter/material.dart';
import 'package:needmoto/responsive/desktopbody.dart';
import 'package:needmoto/responsive/mobilebody.dart';
import 'package:needmoto/responsive/responsive_layout.dart';
import 'package:needmoto/responsive/tabbody.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      responsivelayout(mobilebody: mobilebody(), desktopbody: desktopbody(), tabbody: tabbody()),

    );
    
  }
}