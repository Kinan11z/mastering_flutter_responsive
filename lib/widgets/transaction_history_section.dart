import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/widgets/custom_background_container.dart';
import 'package:mastering_flutter_responsive/widgets/transaction_history_header.dart';
import 'package:mastering_flutter_responsive/widgets/transaction_history_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TransactionHistoryHeader(),
          SizedBox(
            height: 20,
          ),
          Text(
            '13 April 2022',
            style: TextStyle(
              color: Color(0xFFAAAAAA),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TransactionHistoryListView()
        ],
      ),
    );
  }
}
