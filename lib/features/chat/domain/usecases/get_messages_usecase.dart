import 'package:chatx/features/chat/domain/entities/message.dart';
import 'package:chatx/features/chat/domain/repositories/user_list_messages_repo.dart';

class GetMessagesUseCase {
  final UserListMessagesRepo repository;
  GetMessagesUseCase({required this.repository});

  Stream<List<Message>> call() {
    return repository.getAllMessages();
  }
}
