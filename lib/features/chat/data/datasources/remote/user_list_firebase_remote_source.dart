import 'package:chatx/features/chat/domain/entities/user.dart';

abstract class UserListFirebaseRemoteSource {
  Future<List<UserEntity>> getUserListFromFirebase();
}
