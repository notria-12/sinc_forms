import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:sinc_forms/modules/forms/repositories/form_ti_repository.dart';

class FormTIController {
  final FormTIRepository _tiRepository = FormTIRepository();

  Future createForm(Map data, {File? file, String? destination}) async {
    try {
      await _tiRepository.createForm(data);
      if (file != null) {
        final ref = FirebaseStorage.instance.ref(destination!);
        ref.putFile(file);
      }
    } catch (e) {
      print(e);
      throw Exception("Erro ao enviar formulário");
    }
  }
}
