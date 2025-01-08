class ChatModel {
  final bool isSender;
  final bool isImageMessage;
  final String messageText;
  final String? imageUrl;
  final String? status;
  final String profileImageUrl;

  ChatModel({
    required this.isSender,
    required this.isImageMessage,
    this.messageText = '',
    this.imageUrl,
    this.status,
    required this.profileImageUrl,
  });
}
