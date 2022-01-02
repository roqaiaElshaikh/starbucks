import 'package:flutter/material.dart';
import 'package:starbucks/menu/components/menu_body.dart';

import '../build_app_bar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar("MENU",context),
      body: MenuBody(),
    );
  }
}

