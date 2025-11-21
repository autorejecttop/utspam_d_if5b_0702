import 'package:flutter/material.dart';
import 'package:uts/user_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.user});
  final UserData user;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nama: ${widget.user.name}'),
          Text('Email: ${widget.user.email}'),
          Text('Nomor Telepon: ${widget.user.phoneNumber}'),
        ],
      ),
    );
  }
}
