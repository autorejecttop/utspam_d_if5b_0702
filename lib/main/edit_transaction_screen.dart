import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uts/medicine_model.dart';
import 'package:uts/transaction_model.dart';
import 'package:uts/user_model.dart';

class EditTransactionScreen extends StatefulWidget {
  const EditTransactionScreen({
    super.key,
    required this.user,
    required this.medicine,
    required this.transaction,
    required this.handleEditTransaction,
  });

  final UserData user;
  final MedicineData medicine;
  final TransactionData transaction;
  final Future<void> Function(int, TransactionData) handleEditTransaction;

  @override
  State<EditTransactionScreen> createState() => _EditTransactionScreenState();
}

class _EditTransactionScreenState extends State<EditTransactionScreen> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _quantityController;
  late final TextEditingController _noteController;
  PurchaseMethod? _purchaseMethod;
  late final TextEditingController _prescriptionNumberController;

  @override
  initState() {
    super.initState();
    _quantityController = TextEditingController(
      text: widget.transaction.quantity.toString(),
    );
    _noteController = TextEditingController(
      text: widget.transaction.note ?? '',
    );
    _purchaseMethod = widget.transaction.purchaseMethod;
    _prescriptionNumberController = TextEditingController(
      text: widget.transaction.prescriptionNumber ?? '',
    );
  }

  Future<void> _editMedicine() async {
    if (_formKey.currentState!.validate()) {
      final transactionData = TransactionData(
        userId: widget.user.userId!,
        medicineId: widget.medicine.medicineId!,
        quantity: int.parse(_quantityController.text),
        totalPrice: widget.medicine.price * int.parse(_quantityController.text),
        purchaseMethod: _purchaseMethod!,
        note: _noteController.text,
        prescriptionNumber: _purchaseMethod == PurchaseMethod.prescription
            ? _prescriptionNumberController.text
            : null,
      );

      await widget.handleEditTransaction(
        widget.transaction.transactionId!,
        transactionData,
      );
      if (!mounted) return;

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          'Edit transaksi',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama obat: ${widget.medicine.name}'),
                Text(
                  'Harga obat per unit: ${NumberFormat.currency(locale: 'id', symbol: 'Rp').format(widget.medicine.price)}',
                ),

                SizedBox(height: 16),

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _quantityController,
                        onChanged: (value) => setState(() {}),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Jumlah Pembelian (quantity)',
                          hintText: 'Masukkan jumlah pembelian Anda',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Jumlah pembelian tidak boleh kosong!';
                          }

                          final unparsedQuantity = int.tryParse(value);

                          if (unparsedQuantity == null ||
                              unparsedQuantity <= 0) {
                            return "Masukkan jumlah pembelian yang valid!";
                          }

                          return null;
                        },
                      ),

                      SizedBox(height: 8),

                      TextFormField(
                        controller: _noteController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Catatan Tambahan (opsional)',
                          hintText: 'Masukkan catatan tambahan Anda',
                        ),
                      ),

                      SizedBox(height: 8),

                      FormField(
                        initialValue: _purchaseMethod,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null) {
                            return "Metode pembelian tidak boleh kosong!";
                          }

                          return null;
                        },
                        builder: (field) => InputDecorator(
                          decoration: InputDecoration(
                            labelText: 'Metode Pembelian',
                            errorText: field.errorText,
                          ),
                          child: RadioGroup(
                            groupValue: _purchaseMethod,
                            onChanged: (value) {
                              setState(() {
                                field.didChange(value);
                                setState(() {
                                  _purchaseMethod = value;
                                  _prescriptionNumberController.clear();
                                });
                              });
                            },
                            child: Column(
                              children: [
                                RadioListTile(
                                  value: PurchaseMethod.direct,
                                  title: Text('Langsung'),
                                ),
                                RadioListTile(
                                  value: PurchaseMethod.prescription,
                                  title: Text('Resep Dokter'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 8),

                      if (_purchaseMethod == PurchaseMethod.prescription)
                        TextFormField(
                          controller: _prescriptionNumberController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Nomor Resep',
                            hintText: 'Masukkan nomor resep Anda',
                          ),
                          validator: (value) {
                            if (_purchaseMethod !=
                                PurchaseMethod.prescription) {
                              return null;
                            }

                            if (value == null || value.isEmpty) {
                              return 'Nomor resep tidak boleh kosong!';
                            }

                            if (value.length < 6) {
                              return 'Nomor resep minimal 6 karakter!';
                            }

                            final bool hasLetter = RegExp(
                              r'[A-Za-z]',
                            ).hasMatch(value);
                            final bool hasNumber = RegExp(
                              r'\d',
                            ).hasMatch(value);

                            if (!hasLetter || !hasNumber) {
                              return 'Nomor resep harus terdiri dari angka dan huruf!';
                            }

                            return null;
                          },
                        ),
                    ],
                  ),
                ),

                SizedBox(height: 16),

                Text(
                  'Total: ${widget.medicine.price * (int.tryParse(_quantityController.text) ?? 0)}',
                ),

                SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.primaryContainer,
                    ),
                    onPressed: _editMedicine,
                    child: Text('Edit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
