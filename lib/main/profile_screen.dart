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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profil Anda',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),

            Text(
              'Nama: ${widget.user.name}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              'Email: ${widget.user.email}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              'Nomor Telepon: ${widget.user.phoneNumber}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
