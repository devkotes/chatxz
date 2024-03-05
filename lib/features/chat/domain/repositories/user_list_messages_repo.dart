import 'package:chatx/features/chat/domain/entities/message.dart';

abstract class UserListMessagesRepo {
  Stream<List<Message>> getAllMessages();
  Future<void> addAMessage({Message messageEntity});
}
