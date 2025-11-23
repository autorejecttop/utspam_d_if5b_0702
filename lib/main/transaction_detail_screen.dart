import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uts/medicine_model.dart';
import 'package:uts/transaction_model.dart';
import 'package:uts/user_model.dart';

class TransactionDetailScreen extends StatefulWidget {
  const TransactionDetailScreen({
    super.key,
    required this.user,
    required this.medicine,
    required this.transaction,
    required this.handleDeleteTransaction,
  });

  final UserData user;
  final MedicineData medicine;
  final TransactionData transaction;
  final Future<void> Function(int) handleDeleteTransaction;

  @override
  State<TransactionDetailScreen> createState() =>
      _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
  final transactionModel = TransactionModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Transaksi'), titleSpacing: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Transaction ID: ${widget.transaction.transactionId}'),
              Text(
                'Tanggal pembelian: ${widget.transaction.createdAt!.toLocal().toString().split(' ')[0]}',
              ),
              Text('Nama pembeli: ${widget.user.name}'),

              Divider(),

              Text('Nama obat: ${widget.medicine.name}'),
              Text('Kategori obat: ${widget.medicine.category.name}'),
              Text(
                'Harga satuan obat: ${NumberFormat.currency(locale: 'id', symbol: 'Rp').format(widget.medicine.price)}',
              ),

              Divider(),

              Text('Jumlah pembelian: ${widget.transaction.quantity}'),
              Text(
                'Total harga: ${NumberFormat.currency(locale: 'id', symbol: 'Rp').format(widget.transaction.totalPrice)}',
              ),
              Text(
                'Metode pembelian: ${widget.transaction.purchaseMethod.name == 'direct' ? 'Langsung' : 'Resep dokter'}',
              ),
              Text(
                'Nomor resep dokter: ${widget.transaction.prescriptionNumber ?? '-'}',
              ),
              Text('Status transaksi: Selesai'),

              Divider(),

              Row(
                spacing: 16,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        await widget.handleDeleteTransaction(
                          widget.transaction.transactionId!,
                        );

                        if (!context.mounted) return;

                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(
                          context,
                        ).colorScheme.errorContainer,
                        foregroundColor: Theme.of(
                          context,
                        ).colorScheme.onErrorContainer,
                      ),
                      child: Text('Hapus'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(
                          context,
                        ).colorScheme.primaryContainer,
                        foregroundColor: Theme.of(
                          context,
                        ).colorScheme.onPrimaryContainer,
                      ),
                      child: Text('Edit'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
