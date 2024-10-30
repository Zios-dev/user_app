import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final PreferredSizeWidget? bottom;

  SimpleAppBar({this.bottom, this.title});

  @override
  Size get preferredSize => bottom == null
      ? Size.fromHeight(AppBar().preferredSize.height)
      : Size.fromHeight(80 + AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.redAccent],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
      ),
      title: Text(
        title ?? '',
        style: const TextStyle(fontSize: 45, fontFamily: "Signatra"),
      ),
      centerTitle: true,
      automaticallyImplyLeading: true,
      bottom: bottom,
      actions: [],
    );
  }
}
