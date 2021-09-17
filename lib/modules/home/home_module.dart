import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinc_forms/modules/home/ti_home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => HomePage()),
  ];
}
