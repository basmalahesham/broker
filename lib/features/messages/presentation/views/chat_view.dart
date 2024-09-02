import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/messages/presentation/views/widgets/chat_bubble.dart';
import 'package:broker/features/messages/presentation/views/widgets/chat_bubble_for_friend.dart';
import 'package:broker/features/messages/presentation/views/widgets/send_message.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  static const String routeName = "chat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Badge(
              child: CircleAvatar(
                radius: 25,
                child: Image.asset('assets/images/Ellipse 2.png'),
              ),
            ),
          ],
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مصطفى عزوز',
              style: Styles.textStyle16.copyWith(
                color: const Color(0xFF656565),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'يكتب ...',
              style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.w300,
                color: const Color(0xFF898989),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF656565),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    ChatBubble(
                      message: 'Medium short text message 😄😄',
                    ),
                    ChatBubbleForFriend(
                      message: 'Short indeed',
                    ),
                    ChatBubble(
                      message:
                          'Medium to long v2 template also have maximum width at around 274px but if only the wording content/text is yet to reach the timestamp.',
                    ),
                    ChatBubbleForFriend(
                      message:
                          'Medium to long text v1 template is used if the wording/text content’s width is wider than 274px and the text has reached the timestamp',
                    ),
                  ],
                );
              },
            ),
          ),
          const SendMessage(),
        ],
      ),
    );
  }
}
