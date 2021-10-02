import 'package:flutter/material.dart';

class CalledWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  CalledWidget({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Color.fromRGBO(240, 235, 248, 1),
              borderRadius: BorderRadius.circular(8)),
          child: Icon(Icons.list),
        ),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
