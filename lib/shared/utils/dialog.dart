import 'package:flutter/material.dart';

class Dialogs {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  key: key,
                  backgroundColor: Colors.white,
                  children: <Widget>[
                    Center(
                      child: Column(children: [
                        CircularProgressIndicator(
                          color: Color.fromRGBO(37, 59, 179, 1),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Aguarde o envio...",
                          style:
                              TextStyle(color: Color.fromRGBO(37, 59, 179, 1)),
                        )
                      ]),
                    )
                  ]));
        });
  }

  // static Future showConfirmDialog(BuildContext context, GlobalKey key){
  //   return
  // }
}
