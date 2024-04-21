import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_flutter_responsive/controllers/all_expenses_card/all_expenses_card_bloc.dart';
import 'package:mastering_flutter_responsive/core/constant/app_images.dart';
import 'package:mastering_flutter_responsive/core/models/all_expenses_card_model.dart';
import 'package:mastering_flutter_responsive/widgets/all_expenses_card.dart';

final items = [
  const AllExpensesCardModel(
      image: AppImages.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129'),
  const AllExpensesCardModel(
      image: AppImages.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129'),
  const AllExpensesCardModel(
      image: AppImages.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129'),
];

class AllExpensiveCardRow extends StatelessWidget {
  const AllExpensiveCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AllExpensesCardBloc()..add(ChangeCardEvent(newIndex: 0)),
      child: Builder(builder: (context) {
        return BlocBuilder<AllExpensesCardBloc, AllExpensesCardState>(
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context
                          .read<AllExpensesCardBloc>()
                          .add(ChangeCardEvent(newIndex: 0));
                    },
                    child: state is ChangeCardState
                        ? AllExpensesCard(
                            isActive: state.newIndex == 0,
                            allExpensesCardModel: items[0],
                          )
                        : AllExpensesCard(
                            isActive: false,
                            allExpensesCardModel: items[0],
                          ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context
                          .read<AllExpensesCardBloc>()
                          .add(ChangeCardEvent(newIndex: 1));
                    },
                    child: state is ChangeCardState
                        ? AllExpensesCard(
                            isActive: state.newIndex == 1,
                            allExpensesCardModel: items[1],
                          )
                        : AllExpensesCard(
                            isActive: false,
                            allExpensesCardModel: items[1],
                          ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context
                          .read<AllExpensesCardBloc>()
                          .add(ChangeCardEvent(newIndex: 2));
                    },
                    child: state is ChangeCardState
                        ? AllExpensesCard(
                            isActive: state.newIndex == 2,
                            allExpensesCardModel: items[2],
                          )
                        : AllExpensesCard(
                            isActive: false,
                            allExpensesCardModel: items[2],
                          ),
                  ),
                ),
              ],
            );
          },
        );
      }),
    );
  }
}
