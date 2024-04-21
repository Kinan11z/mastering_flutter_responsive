part of 'all_expenses_card_bloc.dart';

@immutable
sealed class AllExpensesCardEvent {}

class ChangeCardEvent extends AllExpensesCardEvent {
  final int newIndex;

  ChangeCardEvent({required this.newIndex});
}
