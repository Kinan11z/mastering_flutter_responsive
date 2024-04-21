import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/widgets/custom_background_container.dart';
import 'package:mastering_flutter_responsive/widgets/information_text_field.dart';
import 'package:mastering_flutter_responsive/widgets/latest_transction.dart';
import 'package:mastering_flutter_responsive/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 20),
          LatestTransction(),
          Divider(height: 40),
          InformationTextFieldQuickInvoice()
        ],
      ),
    );
  }
}
