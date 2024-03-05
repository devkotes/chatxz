import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatx/features/authentication/domain/entities/auth_entity.dart';

abstract class AuthenticationRepository {
  Future<UserCredential> loginWithUser({AuthEntity? authEntity});
  Future<UserCredential> signUpUser({AuthEntity? authEntity});
  Future<String?> getToken();
  Future<void> addUserToFirebaseDB({String? email, String? token, String uid});
}
