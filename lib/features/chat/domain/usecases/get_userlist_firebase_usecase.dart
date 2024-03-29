import 'package:chatx/features/chat/domain/entities/user.dart';
import 'package:chatx/features/chat/domain/repositories/user_list_firebase_repo.dart';

class GetUserListFromFirebaseUseCase {
  final UserListFirebaseRepository repository;
  GetUserListFromFirebaseUseCase({required this.repository});

  Future<List<UserEntity>> call() {
    return repository.getUserListFromFirebase();
  }
}
