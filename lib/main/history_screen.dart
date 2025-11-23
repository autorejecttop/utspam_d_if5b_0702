import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uts/main/transaction_detail_screen.dart';
import 'package:uts/medicine_model.dart';
import 'package:uts/transaction_model.dart';
import 'package:uts/user_model.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key, required this.user});

  final UserData user;

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final transactionModel = TransactionModel();
  final medicineModel = MedicineModel();
  final userModel = UserModel();
  late Future<List<TransactionData>> transactions;
  late Future<List<MedicineData>> medicines;

  @override
  void initState() {
    super.initState();
    transactions = transactionModel.findAll();
    medicines = medicineModel.findAll();
  }

  Future<void> handleRemoveTransaction(int transactionId) async {
    await transactionModel.remove(transactionId);
    setState(() {
      transactions = transactionModel.findAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Riwayat Pembelian Anda',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 24),

              FutureBuilder(
                future: Future.wait([transactions, medicines]),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }

                  final transactions =
                      (snapshot.data![0] as List<TransactionData>)
                          .where(
                            (transaction) =>
                                transaction.userId == widget.user.userId,
                          )
                          .toList();

                  final medicines = snapshot.data![1] as List<MedicineData>;

                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 200,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: transactions.length,
                    itemBuilder: (context, index) => Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TransactionDetailScreen(
                                user: widget.user,
                                medicine: medicines.firstWhere(
                                  (medicine) =>
                                      medicine.medicineId ==
                                      transactions[index].medicineId,
                                ),
                                transaction: transactions[index],
                                handleRemoveTransaction:
                                    handleRemoveTransaction,
                              ),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(
                                'Transaction ID: ${transactions[index].transactionId}',
                              ),
                              subtitle: Text(
                                'Total Biaya: ${NumberFormat.currency(symbol: 'Rp', locale: 'id').format(transactions[index].totalPrice)}',
                              ),
                              trailing: Text(
                                '${transactions[index].createdAt!.toLocal()}'
                                    .split(' ')[0],
                              ),
                            ),

                            Divider(height: 0),

                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Obat: ${medicines.firstWhere((medicine) => medicine.medicineId == transactions[index].medicineId).name}',
                                  ),
                                  Text(
                                    'Jumlah: ${transactions[index].quantity}',
                                  ),
                                  Text('Nama pembeli: ${widget.user.name}'),
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
