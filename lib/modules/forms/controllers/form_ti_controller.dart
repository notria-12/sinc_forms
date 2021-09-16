import 'package:sinc_forms/modules/forms/repositories/form_ti_repository.dart';

class FormTIController {
  final FormTIRepository _tiRepository = FormTIRepository();

  Future createForm(Map data) async {
    try {
      await _tiRepository.createForm(data);
    } catch (e) {
      throw Exception("Erro ao enviar formulário");
    }
  }
}
