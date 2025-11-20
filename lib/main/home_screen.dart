import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uts/medicine_model.dart';
import 'package:uts/user_model.dart';

class HomeScreen extends StatefulWidget {
  final UserData userData;
  const HomeScreen({super.key, required this.userData});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final medicineModel = MedicineModel();
  late Future<List<MedicineData>> futureMedicines;

  @override
  void initState() {
    super.initState();

    futureMedicines = medicineModel.findAll();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo, ${widget.userData.name}',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 16),
            const Text('Tampilan Visual Daftar Obat'),
            const SizedBox(height: 16),

            FutureBuilder<List<MedicineData>>(
              future: futureMedicines,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                final medicines = snapshot.data ?? [];

                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: medicines.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 120,
                              child: Image.network(
                                medicines[index].imageUrl,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsetsGeometry.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    medicines[index].name,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleMedium,
                                  ),
                                  Text(
                                    NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp',
                                    ).format(medicines[index].price),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
