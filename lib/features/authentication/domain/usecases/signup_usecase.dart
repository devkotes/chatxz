import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatx/features/authentication/domain/entities/auth_entity.dart';
import 'package:chatx/features/authentication/domain/repositories/auth_repo.dart';

class SignUpUseCase {
  final AuthenticationRepository repository;
  SignUpUseCase({required this.repository});

  Future<UserCredential> call(AuthEntity? authEntity) {
    return repository.signUpUser(authEntity: authEntity!);
  }
}
