import 'package:flutter/material.dart';
import 'package:movieapp/constants.dart';

class Searchbar extends StatelessWidget {
  final double height;
  final double width;

  const Searchbar({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsetsDirectional.all(2),
      height: height * 0.048,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Constants.kPinkColor,
            Constants.kGreenColor,
          ],
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Constants.kGreyColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          cursorColor: Constants.kPinkColor,
          decoration: InputDecoration(
            fillColor: Constants.kWhiteColor,
            focusColor: Constants.kWhiteColor,
            prefixIcon: Icon(
              Icons.search,
              color: Constants.kWhiteColor.withOpacity(0.6),
            ),
            suffixIcon: Icon(
              Icons.cancel,
              color: Constants.kWhiteColor.withOpacity(0.6),
            ),
            hintText: 'Search',
            hintStyle: TextStyle(
                height: height < 750 ? height * 0.002 : height * 0.0014,
                color: Constants.kWhiteColor.withOpacity(0.6),
                letterSpacing: 1.1,
                fontSize: width * 0.05,
                decorationColor: Constants.kGreyColor),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
