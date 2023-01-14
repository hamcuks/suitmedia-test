import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_name_cubit.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_selected_user.dart';
import 'package:suitmedia_kampusmerdeka_tkd/cubit/get_user/get_user_cubit.dart';
import 'package:suitmedia_kampusmerdeka_tkd/models/user_model.dart';
import 'package:suitmedia_kampusmerdeka_tkd/widgets/app_button.dart';

class ChooseUserPage extends StatefulWidget {
  const ChooseUserPage({super.key});

  @override
  State<ChooseUserPage> createState() => _ChooseUserPageState();
}

class _ChooseUserPageState extends State<ChooseUserPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    context.read<GetUserCubit>().getUsers();

    int page = 1;

    _scrollController.addListener(() {
      if (_scrollController.position.atEdge &&
          _scrollController.position.pixels != 0) {
        page += 1;
        log(page.toString());
        context.read<GetUserCubit>().getUsers(page: page);
      }
    });
    super.initState();
  }

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
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<GetUserCubit>().getUsers();
        },
        child: BlocBuilder<GetUserCubit, GetUserStatus>(
          builder: (context, state) {
            if (state.status == GetUserState.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status == GetUserState.error) {
              return const Center(
                child: Text('Failed to get data from server'),
              );
            } else if (state.status == GetUserState.success) {
              return ListView.separated(
                controller: _scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: state.items.length,
                itemBuilder: (context, index) =>
                    _buildContent(state.items[index]),
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(),
                ),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }

  GestureDetector _buildContent(UserItemModel data) {
    return GestureDetector(
      onTap: () {
        context
            .read<GetSelectedUserCubit>()
            .setName('${data.firstName} ${data.lastName}');
        Navigator.pop(context);
      },
      child: Row(
        children: [
          SizedBox(
            width: 49,
            height: 49,
            child: CircleAvatar(
              backgroundImage: NetworkImage(data.avatar),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${data.firstName} ${data.lastName}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF04021D),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                data.email,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF686777),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
