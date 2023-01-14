import 'package:flutter/material.dart';
import 'package:suitmedia_kampusmerdeka_tkd/widgets/app_button.dart';

class ChooseUserPage extends StatelessWidget {
  const ChooseUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Third Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: 50,
        itemBuilder: (context, index) => _buildContent(),
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(),
        ),
      ),
    );
  }

  Row _buildContent() {
    return Row(
      children: [
        const SizedBox(
          width: 49,
          height: 49,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Ini nama user',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF04021D),
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Ini email user',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF686777),
              ),
            ),
          ],
        )
      ],
    );
  }
}
