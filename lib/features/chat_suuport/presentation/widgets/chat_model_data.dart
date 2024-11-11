import '../../../../exports.dart';
import '../../data/models/chat_model.dart';

List<ChatModel> dummyChatData = [
  ChatModel(
    isSender: true,
    isImageMessage: false,
    messageText: AppStrings.messageText1,
    status: AppStrings.statusSeen,
    profileImageUrl: AppStrings.profileImageMale,
  ),
  ChatModel(
    isSender: false,
    isImageMessage: true,
    imageUrl: AppStrings.imageUrl,
    status: AppStrings.statusSeen,
    profileImageUrl: AppStrings.profileImageFemale,
  ),
  ChatModel(
    isSender: true,
    isImageMessage: false,
    messageText: AppStrings.messageText2,
    status: AppStrings.statusSeen,
    profileImageUrl: AppStrings.profileImageMale,
  ),
  ChatModel(
    isSender: false,
    isImageMessage: false,
    messageText: AppStrings.messageText3,
    status: AppStrings.statusSeen,
    profileImageUrl: AppStrings.profileImageFemale,
  ),
  ChatModel(
    isSender: false,
    isImageMessage: false,
    messageText: AppStrings.messageText3,
    status: AppStrings.statusSeen,
    profileImageUrl: AppStrings.profileImageFemale,
  ),
  ChatModel(
    isSender: true,
    isImageMessage: false,
    messageText: AppStrings.messageText2,
    status: AppStrings.statusSeen,
    profileImageUrl: AppStrings.profileImageMale,
  ),
  ChatModel(
    isSender: true,
    isImageMessage: false,
    messageText: AppStrings.messageText1,
    status: AppStrings.statusSeen,
    profileImageUrl: AppStrings.profileImageMale,
  ),
  ChatModel(
    isSender: true,
    isImageMessage: false,
    messageText: AppStrings.messageText1,
    status: AppStrings.statusSeen,
    profileImageUrl: AppStrings.profileImageMale,
  ),
  ChatModel(
    isSender: true,
    isImageMessage: false,
    messageText: AppStrings.messageText4,
    status: AppStrings.statusDelivered,
    profileImageUrl: AppStrings.profileImageMale,
  ),
];
