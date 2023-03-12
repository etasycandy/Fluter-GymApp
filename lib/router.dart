import 'package:get/get.dart';
import 'package:gymix/view/AuthView.dart';

class RouteGenerator {
  static List<GetPage> routes = [
    GetPage(
        name: AuthView.route,
        page: () => const AuthView(),
        binding: AuthBinding()
    )
        // middlewares: [WelcomeMiddleware()])
  ];
}

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthBinding>(AuthBinding());
  }
}