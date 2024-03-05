import 'package:chatx/features/chat/domain/entities/user.dart';

abstract class UserListFirebaseRepository {
  Future<List<UserEntity>> getUserListFromFirebase();
}
