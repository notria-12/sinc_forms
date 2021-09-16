import 'package:sinc_forms/modules/forms/repositories/form_ti_repository.dart';

class FormTIController {
  final FormTIRepository _tiRepository = FormTIRepository();

  createForm(Map data) {
    _tiRepository.createForm(data);
  }
}
