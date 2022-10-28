import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF15202b),
        appBar: AppBar(
          backgroundColor: const Color(0xFF15202b),
          elevation: 0,
          leading: IconButton(
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://ca.slack-edge.com/T0179KMH83U-U01UFRZGT6C-a1ed61feb4aa-512',
              ),
              radius: 18,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
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
        ),
        body: const Center(
          child: Text(
            'ホーム',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
