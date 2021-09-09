import 'package:flutter/material.dart';
import 'package:sinc_forms/shared/widgets/card_form_widget.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';

enum SingingCharacter { jotonio, raimundo }

class FormIndustryPage extends StatefulWidget {
  const FormIndustryPage({Key? key}) : super(key: key);

  @override
  _FormIndustryPageState createState() => _FormIndustryPageState();
}

class _FormIndustryPageState extends State<FormIndustryPage> {
  SingingCharacter? _character = SingingCharacter.jotonio;
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
            CardForm(
                label: "Técnico",
                widget: Column(
                  children: [
                    RadioListTile(
                        value: SingingCharacter.jotonio,
                        groupValue: SingingCharacter.jotonio,
                        onChanged: (value) {
                          setState(() {
                            _character = SingingCharacter.jotonio;
                          });
                        }),
                    RadioListTile(
                        value: SingingCharacter.raimundo,
                        groupValue: SingingCharacter.raimundo,
                        onChanged: (value) {
                          setState(() {
                            _character = SingingCharacter.raimundo;
                          });
                        })
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
