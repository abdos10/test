import 'package:flutter/material.dart';
import 'package:movieapp/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
        final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    return const SafeArea(
      child: Scaffold(
              backgroundColor: Constants.kBlackColor,
              body: Stack(children: [],),
      ),
    );
  }
}