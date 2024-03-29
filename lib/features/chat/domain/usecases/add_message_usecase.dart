import 'package:chatx/features/chat/domain/entities/message.dart';
import 'package:chatx/features/chat/domain/repositories/user_list_messages_repo.dart';

class AddMessageUseCase {
  final UserListMessagesRepo userListMessagesRepo;

  AddMessageUseCase({required this.userListMessagesRepo});

  Future<void> call({Message? message}) {
    return userListMessagesRepo.addAMessage(messageEntity: message!);
  }
}
