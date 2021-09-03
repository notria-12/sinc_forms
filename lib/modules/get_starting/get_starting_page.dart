import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GetStartingPage extends StatelessWidget {
  const GetStartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(children: [
        Column(
          children: [
            Expanded(
                flex: 6,
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 59, 179, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Vamos Iniciar!',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Qual seu perfil na plataforma?',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 4,
                child: Container(color: Color.fromRGBO(250, 251, 255, 1)))
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.50,
          right: 0,
          left: 0,
          child: Container(
            margin: EdgeInsets.all(8),
            // height: 150,
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
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Modular.to.pushNamed('/login');
                  },
                  child: ListTile(
                    title: Text(
                      "Sou Administrador",
                      style: TextStyle(
                          fontFamily: 'Roboto', fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                InkWell(
                  onTap: () {
                    Modular.to.pushNamed('/choose');
                  },
                  child: ListTile(
                    title: Text(
                      "Sou usuário comum",
                      style: TextStyle(
                          fontFamily: 'Roboto', fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        )
      ])),
    );
  }
}
