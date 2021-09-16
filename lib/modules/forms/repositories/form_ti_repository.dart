import 'package:cloud_firestore/cloud_firestore.dart';

class FormTIRepository {
  final _db = FirebaseFirestore.instance;

  Future createForm(Map data) async {
    print("Repository");
    await _db.collection("forms").doc("ti").set({"dados": data});
  }
}
