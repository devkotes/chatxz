import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatx/features/authentication/domain/entities/auth_entity.dart';
import 'package:chatx/features/authentication/domain/repositories/auth_repo.dart';

class LoginUseCase {
  final AuthenticationRepository repository;
  LoginUseCase({required this.repository});

  Future<UserCredential> call(AuthEntity? authEntity) {
    return repository.loginWithUser(authEntity: authEntity!);
  }
}
