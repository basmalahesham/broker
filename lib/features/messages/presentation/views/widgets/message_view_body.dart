import 'package:broker/features/messages/presentation/views/widgets/custom_app_bar_message_view.dart';
import 'package:broker/features/messages/presentation/views/widgets/custom_list_view.dart';
import 'package:broker/features/messages/presentation/views/widgets/send_message.dart';
import 'package:flutter/material.dart';

class MessageViewBody extends StatelessWidget {
  const MessageViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBarMessageView(),
        CustomListView(),
        SendMessage(),
      ],
    );
  }
}
