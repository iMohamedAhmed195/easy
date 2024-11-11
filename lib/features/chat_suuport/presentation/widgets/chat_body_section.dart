import '../../../../exports.dart';
import 'chat_screen_app_bar_section.dart';
import 'chat_screen_send_and_document_filed_section.dart';
import 'chat_screen_chat_list_section.dart';

class ChatBodySection extends StatelessWidget {
  const ChatBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
             ChatScreenAppBarSection(
              appBarTitle: AppStrings.chatSupport,
            ),
            25.vs,
            const ChatScreenChatListSection(),
            10.vs,
            const ChatScreenSendAndDocumentFiledSection(),
            29.vs,
          ],
        ),
      ],
    );
  }
}
