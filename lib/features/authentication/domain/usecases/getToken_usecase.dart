import 'package:chatx/features/authentication/domain/repositories/auth_repo.dart';

class GetTokenUseCase {
  final AuthenticationRepository repository;
  GetTokenUseCase({required this.repository});

  Future<String?> call() {
    return repository.getToken();
  }
}
