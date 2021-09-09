import 'package:flutter/material.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';

class FormIndustryPage extends StatefulWidget {
  const FormIndustryPage({Key? key}) : super(key: key);

  @override
  _FormIndustryPageState createState() => _FormIndustryPageState();
}

class _FormIndustryPageState extends State<FormIndustryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 235, 248, 1),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(240, 235, 248, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderForm(
              label: "Apropriação de horas(manutenção)",
            ),
          ],
        ),
      ),
    );
  }
}
