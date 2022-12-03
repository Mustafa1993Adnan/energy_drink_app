import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar CustomAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      Padding(
        padding: const EdgeInsets.all(12),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    ],
    leading: const Icon(
      Icons.menu,
      color: Colors.black87,
    ),
  );
}
