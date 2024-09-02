import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/messages/presentation/views/widgets/custom_list_view.dart';
import 'package:broker/features/messages/presentation/views/widgets/send_message.dart';
import 'package:flutter/material.dart';

class ArchiveView extends StatelessWidget {
  const ArchiveView({super.key});
  static const String routeName = 'archive';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'الارشيف',
          style: Styles.textStyle22,
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
      body: const Column(
        children: [
          CustomListView(),
          SendMessage(),
        ],
      ),
    );
  }
}
