import 'package:flutter/material.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_name_cubit.dart';
import 'package:suitmedia_kampusmerdeka_tkd/router.dart';
import 'package:suitmedia_kampusmerdeka_tkd/utils/utils.dart';
import 'package:suitmedia_kampusmerdeka_tkd/widgets/app_button.dart';
import 'package:suitmedia_kampusmerdeka_tkd/widgets/app_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _palindromeController = TextEditingController();
  final GlobalKey<FormState> _form = GlobalKey();

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
                Form(
                  key: _form,
                  child: AppInputForm(
                    controller: _nameController,
                    hint: 'Name',
                    required: true,
                  ),
                ),
                const SizedBox(height: 24),
                AppInputForm(
                  controller: _palindromeController,
                  hint: 'Palindrome',
                ),
                const SizedBox(height: 48),
                AppButton(
                  label: 'CHECK',
                  onPressed: () {
                    _showDialog(context, _palindromeController.text);
                  },
                ),
                const SizedBox(height: 16),
                AppButton(
                  label: 'NEXT',
                  onPressed: () {
                    if (_form.currentState!.validate()) {
                      context
                          .read<GetNameCubit>()
                          .setName(_nameController.text);
                      Navigator.pushNamed(context, MyRouter.user);
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> _showDialog(BuildContext context, String text) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                (text.isEmpty)
                    ? 'Form harus diisi!'
                    : text.isPalindrome
                        ? 'is palindrome'
                        : 'not palindrome',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 32),
            AppButton(
              label: 'Close',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
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
