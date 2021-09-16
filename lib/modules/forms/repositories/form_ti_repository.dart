import 'package:cloud_firestore/cloud_firestore.dart';

class FormTIRepository {
  final _db = FirebaseFirestore.instance;

  Future createForm(Map data) async {
    await _db.collection("forms_ti").add({"dados": data});
  }
}
