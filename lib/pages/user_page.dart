import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_name_cubit.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_selected_user.dart';
import 'package:suitmedia_kampusmerdeka_tkd/router.dart';
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
          BlocBuilder<GetSelectedUserCubit, String>(
            builder: (context, state) {
              return Center(
                child: Text(
                  state.isEmpty ? 'Selected User' : state,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              );
            },
          ),
          Positioned(
            right: 20,
            left: 20,
            bottom: 32,
            child: AppButton(
              label: 'Choose a User',
              onPressed: () {
                Navigator.pushNamed(context, MyRouter.chooseUser);
              },
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
        children: [
          const Text(
            'Welcome',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          BlocBuilder<GetNameCubit, String>(
            builder: (context, state) {
              return Text(
                state,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
