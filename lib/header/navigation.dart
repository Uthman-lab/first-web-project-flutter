import 'package:flutter/material.dart';

class NavbarLargeScreen extends StatelessWidget {
  const NavbarLargeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
      child: Row(
        children: [
          NavItem(
            label: "Home",
            onpress: () {},
          ),
          NavItem(
            label: "About",
            onpress: () {},
          ),
          NavItem(
            label: "Our Products",
            onpress: () {},
          ),
          NavItem(
            label: "Career",
            onpress: () {},
          ),
          NavItem(
            label: "Contact Us",
            onpress: () {},
          )
        ],
      ),
    );
  }
}

class NavbarDrawerSmall extends StatelessWidget {
  const NavbarDrawerSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NavItem(
          label: "Home",
          onpress: () {},
        ),
        NavItem(
          label: "About",
          onpress: () {},
        ),
        NavItem(
          label: "Our Products",
          onpress: () {},
        ),
        NavItem(
          label: "Career",
          onpress: () {},
        ),
        NavItem(
          label: "Contact Us",
          onpress: () {},
        )
      ],
    );
  }
}

class NavItem extends StatefulWidget {
  final label, onpress;
  NavItem({
    this.label,
    this.onpress,
    Key? key,
  }) : super(key: key);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  var onHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: onHover ? Colors.white : Colors.blueAccent,
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(0)),
      padding: const EdgeInsets.all(7.0),
      child: TextButton(
        onPressed: () {},
        onHover: (val) {
          setState(() {
            onHover = val;
          });
        },
        child: Text(widget.label,
            style: TextStyle(
                // background: Paint()..color = Colors.greenAccent,
                fontSize: 24,
                color: onHover ? Colors.blueAccent : Colors.white)),
      ),
    );
  }
}
