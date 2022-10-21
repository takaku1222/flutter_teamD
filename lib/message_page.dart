import 'package:flutter/material.dart';
import 'package:twitter_ui/twitter_icons.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15202b),
      appBar: AppBar(
        backgroundColor: const Color(0xFF15202b),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              TI.property,
              size: 30,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: const ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  // child: Conversation(user: widget.user),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
