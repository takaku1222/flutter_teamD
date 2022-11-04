import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF15202b),
        appBar: AppBar(
          backgroundColor: const Color(0xFF15202b),
          elevation: 0,
          title: Image.asset(
            'assets/images/Twitter logo.png',
            height: 50,
            fit: BoxFit.contain,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.star),
              color: Colors.lightBlue,
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://ca.slack-edge.com/T0179KMH83U-U01UFRZGT6C-gd57c02093f3-512',
              ),
              radius: 18,
            ),
            onPressed: () {},
          ),
        ),
        body: const Center(
          child: Text(
            'サーチ',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
