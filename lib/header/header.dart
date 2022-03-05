import 'package:flutter/material.dart';

import 'logo.dart';
import 'navigation.dart';

class HeaderRenderer extends StatelessWidget {
  const HeaderRenderer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width <= 640) {
      return Logo();
    } else if (MediaQuery.of(context).size.width >= 641 &&
        MediaQuery.of(context).size.width <= 1008) {
      return HeaderMediumScreen();
    } else
      return HeaderLargeScreen();
  }
}

class HeaderMediumScreen extends StatelessWidget {
  const HeaderMediumScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Logo(),
        Text("${MediaQuery.of(context).size.width.toString()}"),
        // navigation pane

        NavbarLargeScreen(),
      ],
    );
  }
}

class HeaderLargeScreen extends StatelessWidget {
  const HeaderLargeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // logo section
        Logo(),

        Text("${MediaQuery.of(context).size.width.toString()}"),

        // navigation pane

        NavbarLargeScreen(),
      ],
    );
  }
}
