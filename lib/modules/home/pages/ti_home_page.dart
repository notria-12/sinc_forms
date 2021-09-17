import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinc_forms/modules/home/widgets/called_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromRGBO(37, 59, 179, 1)),
              child: Container(),
            ),
            InkWell(
              onTap: () {
                Modular.to.pushNamed("/home/ti");
              },
              child: ListTile(
                leading: Icon(Icons.list),
                title: Text('Todos os chamados'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.graphic_eq_outlined),
                title: Text('Estatísticas'),
              ),
            ),
            InkWell(
              onTap: () {
                Modular.to.pop();
                Modular.to.pop();
              },
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair'),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(37, 59, 179, 1),
        title: Text('Gerenciamento TI'),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(37, 59, 179, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Relação de Chamados",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto",
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.42,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                      Center(child: Icon(Icons.task_rounded)),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(240, 235, 248, 1)),
                                ),
                                Text(
                                  "21",
                                  style: TextStyle(
                                      // color: Colors.white,
                                      fontFamily: "Roboto",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Text("Mês anterior",
                                style: TextStyle(
                                    // color: Colors.white,
                                    fontFamily: "Roboto",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        width: MediaQuery.of(context).size.width * 0.42,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                      Center(child: Icon(Icons.task_rounded)),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(240, 235, 248, 1)),
                                ),
                                Text(
                                  "15",
                                  style: TextStyle(
                                      // color: Colors.white,
                                      fontFamily: "Roboto",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Text("Mês Atual",
                                style: TextStyle(
                                    // color: Colors.white,
                                    fontFamily: "Roboto",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Últimos Chamados",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                // top: hei,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: ListView(
                      children: List.generate(
                          7,
                          (index) => CalledWidget(
                              title: "Recarga de tonner Impressora Brother",
                              subtitle: "Indústria"))),
                ))
          ],
        ),
      ),
    );
  }
}
