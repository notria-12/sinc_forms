import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dropdownValue = 'Adimistrativo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(37, 59, 179, 1),
      ),
      body: Container(
        child: Stack(children: [
          Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    width: double.maxFinite,
                    color: Color.fromRGBO(37, 59, 179, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Entrar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  )),
              Expanded(flex: 6, child: Container())
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              child: Form(
                  child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.maxFinite,
                    // width: MediaQuery.of(context).size.width * 0.6,
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      // icon: const Icon(Icons.arrow_downward),
                      // iconSize: 24,

                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Adimistrativo',
                        'Segurança do Trabalho',
                        'Transporte',
                        'Indústria'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Email"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Senha"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 50,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('ENTRAR'),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(33, 33, 33, 1)),
                      ))
                ],
              )),
            ),
          )
        ]),
      ),
    );
  }
}
