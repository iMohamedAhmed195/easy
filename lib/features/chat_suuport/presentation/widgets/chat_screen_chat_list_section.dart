import '../../../../exports.dart';
import 'chat_bubble_section.dart';
import 'chat_model_data.dart';

class ChatScreenChatListSection extends StatelessWidget {
  const ChatScreenChatListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              "Today",
              style: getSemiboldTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 12,
              ),
            ),
            4.vs,
            Text(
              "A specialist joined the chat",
              style: getSemiboldTextStyle(
                color: AppColors.grayishBlueColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
        24.vs,
        Text(
          "11:07",
          style: getSemiboldTextStyle(
            color: AppColors.grayishBlueColor,
            fontSize: 12,
          ),
        ),
        8.vs,
        Container(
          constraints: BoxConstraints(
            maxHeight: 520.h,
          ),
          child: ListView.builder(
            itemCount: dummyChatData.length,
            itemBuilder: (context, index) {
              final chat = dummyChatData[index];
              return ChatBubbleSection(
                isSender: chat.isSender,
                isImageMessage: chat.isImageMessage,
                messageText: chat.messageText,
                imageUrl: chat.imageUrl,
                status: index == dummyChatData.length - 1 ? chat.status! : "",
                profileImageUrl: chat.profileImageUrl,
              );
            },
          ),
        ),
      ],
    );
  }
}
