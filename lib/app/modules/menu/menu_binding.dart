import 'package:get/get.dart';
import 'package:vakinha_burger/app/modules/menu/menu_controller.dart';
import 'package:vakinha_burger/app/repositories/product/product_repository.dart';
import 'package:vakinha_burger/app/repositories/product/product_repository_impl.dart';

class MenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(
      () => ProductRepositoryImpl(restClient: Get.find()),
    );
    Get.put(MenuControllers(productRepository: Get.find()));
  }
}
