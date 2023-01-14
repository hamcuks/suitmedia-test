import 'package:flutter/material.dart';
import 'package:suitmedia_kampusmerdeka_tkd/widgets/app_button.dart';
import 'package:suitmedia_kampusmerdeka_tkd/widgets/app_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _palindromeController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _palindromeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildUserAddIcon(),
                const SizedBox(height: 58),
                AppInputForm(
                  controller: _nameController,
                  hint: 'Name',
                ),
                const SizedBox(height: 24),
                AppInputForm(
                  controller: _palindromeController,
                  hint: 'Palindrome',
                ),
                const SizedBox(height: 48),
                AppButton(
                  label: 'CHECK',
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                AppButton(
                  label: 'NEXT',
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildUserAddIcon() {
    return Container(
      width: 116,
      height: 116,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.4),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.person_add,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
