import 'package:flutter/material.dart';

import 'custom_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coruscate Task",
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: LayoutBuilder(
              builder: (_, constraints) => Container(
                width: constraints.maxWidth,
                child: CustomWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
