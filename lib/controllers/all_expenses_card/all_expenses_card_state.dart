part of 'all_expenses_card_bloc.dart';

@immutable
sealed class AllExpensesCardState {}

final class AllExpensesCardInitial extends AllExpensesCardState {}

final class ChangeCardState extends AllExpensesCardState {
  final int newIndex;

  ChangeCardState({required this.newIndex});
}
