import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uts/medicine_model.dart';
import 'package:uts/user_model.dart';

enum PaymentMethod { direct, prescription }

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
  final _quantityController = TextEditingController();
  final _noteController = TextEditingController();
  PaymentMethod? _paymentMethod;
  final _prescriptionNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beli obat',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 16),

                Text('${widget.user.name} akan membeli'),

                SizedBox(height: 8),

                Text('Nama obat: ${widget.medicineToBuy.name}'),
                Text('Harga obat per unit: ${widget.medicineToBuy.price}'),

                SizedBox(height: 16),

                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _quantityController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Jumlah Pembelian',
                          hintText: 'Masukkan jumlah pembelian Anda',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama lengkap tidak boleh kosong!';
                          }

                          final unparsedQuantity = int.tryParse(value);

                          if (unparsedQuantity == null ||
                              unparsedQuantity <= 0) {
                            return "Masukkan jumlah pembelian yang valid!";
                          }

                          return null;
                        },
                      ),

                      TextFormField(
                        controller: _noteController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Catatan Tambahan',
                          hintText: 'Masukkan catatan tambahan Anda',
                        ),
                      ),

                      FormField(
                        builder: (field) => InputDecorator(
                          decoration: InputDecoration(
                            labelText: 'Metode Pembayaran',
                            errorText: field.errorText,
                          ),
                          child: RadioGroup(
                            groupValue: _paymentMethod,
                            onChanged: (value) {
                              setState(() {
                                field.didChange(value);
                                setState(() {
                                  _paymentMethod = value;
                                });
                              });
                            },
                            child: Column(
                              children: [
                                RadioListTile(
                                  value: PaymentMethod.direct,
                                  title: Text('Langsung'),
                                ),
                                RadioListTile(
                                  value: PaymentMethod.prescription,
                                  title: Text('Resep Dokter'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),

                Text('Total: ${widget.medicineToBuy.price}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
