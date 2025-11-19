import 'package:flutter/material.dart';
import 'package:uts/user_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.userData});
  final UserData userData;

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
          Text('Nama: ${widget.userData.name}'),
          Text('Email: ${widget.userData.email}'),
          Text('Nomor Telepon: ${widget.userData.phoneNumber}'),
        ],
      ),
    );
  }
}
