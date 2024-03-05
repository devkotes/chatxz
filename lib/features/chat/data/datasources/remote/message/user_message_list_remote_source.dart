import 'package:chatx/features/chat/domain/entities/message.dart';

abstract class UserMessageListRemoteSource {
  Stream<List<Message>> getAllMessages();
  Future<void> addAMessage({Message? messageEntity});
}
