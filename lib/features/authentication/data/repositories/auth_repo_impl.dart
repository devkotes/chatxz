import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatx/features/authentication/data/datasources/remote/auth_firebase_source.dart';
import 'package:chatx/features/authentication/domain/entities/auth_entity.dart';
import 'package:chatx/features/authentication/domain/repositories/auth_repo.dart';

class AuthenticationRepositoryImplementation
    implements AuthenticationRepository {
  AuthFirebaseRemoteSource? authFirebaseRemoteSource;

  AuthenticationRepositoryImplementation({this.authFirebaseRemoteSource});

  @override
  Future<UserCredential> loginWithUser({AuthEntity? authEntity}) =>
      authFirebaseRemoteSource!.loginWithUser(authEntity: authEntity);

  @override
  Future<UserCredential> signUpUser({AuthEntity? authEntity}) =>
      authFirebaseRemoteSource!.signUpUser(authEntity: authEntity);

  @override
  Future<String?> getToken() => authFirebaseRemoteSource!.getToken();

  @override
  Future<void> addUserToFirebaseDB(
          {String? email, String? token, String? uid}) =>
      authFirebaseRemoteSource!
          .addUserToFirebaseDB(email: email, token: token, uid: uid!);
}
