import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/build_app_bar.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/start/contentes/start_body.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar("STARBUCKS", context),
      body: StartBody(),
        floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
          backgroundColor: defoaltcolor,
          label: Text(
            "Pay in store",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
    ),
    );
  }
}
