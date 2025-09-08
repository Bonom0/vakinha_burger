import 'package:get/get.dart';
import 'package:vakinha_burger/app/core/mixins/loader_mixin.dart';
import 'package:vakinha_burger/app/core/mixins/messages_mixin.dart';
import 'package:vakinha_burger/app/repositories/auth/auth_repository.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;

  final loading = false.obs;
  final message = Rxn<MessageModel>();

  RegisterController({required AuthRepository authRepository})
    : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(loading);
    messageListener(message);
    super.onInit();
  }

  void qualquer() {
    message.value = MessageModel(
      title: 'Teste',
      message: 'Mensagem teste',
      type: MessageType.info,
    );
    // loading.toggle();
    // Future.delayed(Duration(seconds: 2), () => loading.toggle());
  }
}
