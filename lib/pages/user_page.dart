import 'package:flutter/material.dart';
import 'package:suitmedia_kampusmerdeka_tkd/widgets/app_button.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          const Divider(),
          _buildSelectedUser(),
          const Center(
            child: Text(
              'Selected User Name',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
            right: 20,
            left: 20,
            bottom: 32,
            child: AppButton(
              label: 'Choose a User',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildSelectedUser() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Welcome',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'John Doe',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
