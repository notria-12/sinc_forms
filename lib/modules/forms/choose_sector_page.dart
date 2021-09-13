import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChooseSectorPage extends StatelessWidget {
  const ChooseSectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(37, 59, 179, 1),
        ),
        child: Column(
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Escolha o departamento para preencher o formulário!',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Modular.to.pushNamed('/forms/ti');
                  },
                  child: SectorWidget(
                    label: "Tecnologia da Informação(T.I)",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Modular.to.pushNamed('/forms/transport');
                  },
                  child: SectorWidget(
                    label: "Transporte",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Modular.to.pushNamed('/forms/industry');
                  },
                  child: SectorWidget(
                    label: "Indústria",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Modular.to.pushNamed('/forms/sst');
                  },
                  child: SectorWidget(
                    label: "Segurança do trabalho",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // InkWell(
                //   onTap: () {
                //     // Modular.to.pushNamed('/choose');
                //   },
                //   child: SectorWidget(
                //     label: "Recursos Humanos(RH)",
                //   ),
                // ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class SectorWidget extends StatelessWidget {
  String label;
  // VoidCallback? onTap;
  SectorWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text(
          label,
          style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
