import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mastering_flutter_responsive/widgets/custom_button.dart';
import 'package:mastering_flutter_responsive/widgets/title_and_text_field.dart';

class InformationTextFieldQuickInvoice extends StatelessWidget {
  const InformationTextFieldQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TitleAndTextField(
                  title: 'Customer name', hintText: 'Type customer name'),
            ),
            SizedBox(width: 20),
            Expanded(
              child: TitleAndTextField(
                  title: 'Customer email', hintText: 'Type customer email'),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TitleAndTextField(
                  title: 'Customer name', hintText: 'Type customer name'),
            ),
            SizedBox(width: 20),
            Expanded(
              child: TitleAndTextField(
                  title: 'Customer email', hintText: 'Type customer email'),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: 'Add more details',
              backgourndColor: Colors.white,
              textColor: Color(0xFF4DB7F2),
            )),
            SizedBox(width: 20),
            Expanded(
                child: CustomButton(
              text: 'Send Money',
            ))
          ],
        ),
      ],
    );
  }
}
