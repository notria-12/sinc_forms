import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinc_forms/modules/get_starting/choose_sector_page.dart';

class GetStartingModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    // Simple route using the ChildRoute
    ChildRoute('/choose', child: (_, __) => ChooseSectorPage()),
  ];
}
