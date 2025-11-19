import 'package:flutter/material.dart';
import 'package:uts/user_model.dart';

class HomeScreen extends StatelessWidget {
  final UserData userData;
  const HomeScreen({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo, ${userData.name}',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            SizedBox(height: 16),

            Text('Tampilan Visual Daftar Obat'),
          ],
        ),
      ),
    );
  }
}
