import 'package:flutter/material.dart';

class CardForm extends StatelessWidget {
  final String label;
  final Widget widget;
  const CardForm({Key? key, required this.label, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Container(
          // height: 120,
          width: double.maxFinite,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                label,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              widget
            ],
          ),
        ),
      ),
    );
  }
}
