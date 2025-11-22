import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uts/main/buy_medicine_screen.dart';
import 'package:uts/medicine_model.dart';
import 'package:uts/user_model.dart';

class ShopScreen extends StatefulWidget {
  final UserData user;
  const ShopScreen({super.key, required this.user});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final medicineModel = MedicineModel();
  late Future<List<MedicineData>> medicines;

  @override
  void initState() {
    super.initState();

    medicines = medicineModel.findAll(orderBy: 'medicine_id DESC');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Obat terbaru kami',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 12),

              FutureBuilder(
                future: medicines,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }

                  final medicines = snapshot.data ?? [];

                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 240,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: medicines.length,
                    itemBuilder: (context, index) => SizedBox(
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
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                BuyMedicineScreen(
                                                  user: widget.user,
                                                  medicineToBuy:
                                                      medicines[index],
                                                ),
                                          ),
                                        );
                                      },
                                      child: Text('Beli'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
