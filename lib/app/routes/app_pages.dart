import 'package:get/get.dart';

import '../modules/date/bindings/date_binding.dart';
import '../modules/date/views/date_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DATE;

  static final routes = [
    GetPage(
      name: _Paths.DATE,
      page: () => const DateView(),
      binding: DateBinding(),
    ),
  ];
}
