import 'package:flutter/material.dart';

class HeaderForm extends StatelessWidget {
  final String label;
  const HeaderForm({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          height: 80,
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 15,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(37, 59, 179, 1)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                label,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
