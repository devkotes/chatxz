import 'package:chatx/features/chat/data/datasources/remote/user_list_firebase_remote_source.dart';
import 'package:chatx/features/chat/domain/entities/user.dart';
import 'package:chatx/features/chat/domain/repositories/user_list_firebase_repo.dart';

class UserListFireBaseRepoImplementation implements UserListFirebaseRepository {
  UserListFirebaseRemoteSource? firebaseRemote;
  UserListFireBaseRepoImplementation({this.firebaseRemote});

  @override
  Future<List<UserEntity>> getUserListFromFirebase() =>
      firebaseRemote!.getUserListFromFirebase();
}
