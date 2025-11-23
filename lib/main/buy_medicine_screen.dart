import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uts/medicine_model.dart';
import 'package:uts/transaction_model.dart';
import 'package:uts/user_model.dart';

class BuyMedicineScreen extends StatefulWidget {
  final MedicineData medicineToBuy;
  final UserData user;
  const BuyMedicineScreen({
    super.key,
    required this.medicineToBuy,
    required this.user,
  });

  @override
  State<BuyMedicineScreen> createState() => _BuyMedicineScreenState();
}

class _BuyMedicineScreenState extends State<BuyMedicineScreen> {
  final _formKey = GlobalKey<FormState>();
  final transactionModel = TransactionModel();

  final _quantityController = TextEditingController(text: '0');
  final _noteController = TextEditingController();
  PurchaseMethod? _purchaseMethod;
  final _prescriptionNumberController = TextEditingController();

  Future<void> _buyMedicine() async {
    if (_formKey.currentState!.validate()) {
      final transactionData = TransactionData(
        userId: widget.user.userId!,
        medicineId: widget.medicineToBuy.medicineId!,
        quantity: int.parse(_quantityController.text),
        totalPrice:
            widget.medicineToBuy.price * int.parse(_quantityController.text),
        purchaseMethod: _purchaseMethod!,
        note: _noteController.text,
        prescriptionNumber: _purchaseMethod == PurchaseMethod.prescription
            ? _prescriptionNumberController.text
            : null,
      );

      await transactionModel.create(transactionData);

      if (!mounted) return;

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text('Beli obat', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),

                Text('${widget.user.name} akan membeli:'),

                SizedBox(height: 8),

                Text('Nama obat: ${widget.medicineToBuy.name}'),
                Text(
                  'Harga obat per unit: ${NumberFormat.currency(locale: 'id', symbol: 'Rp').format(widget.medicineToBuy.price)}',
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
                  'Total: ${NumberFormat.currency(locale: 'id', symbol: 'Rp').format(widget.medicineToBuy.price * (int.tryParse(_quantityController.text) ?? 0))}',
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
                    onPressed: _buyMedicine,
                    child: Text('Beli'),
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
