import 'package:chatx/features/authentication/domain/repositories/auth_repo.dart';

class AddUserToFirebaseDbUseCase {
  final AuthenticationRepository repository;
  AddUserToFirebaseDbUseCase({required this.repository});

  Future<void> call(String email, String token, String uid) {
    return repository.addUserToFirebaseDB(email: email, token: token, uid: uid);
  }
}
