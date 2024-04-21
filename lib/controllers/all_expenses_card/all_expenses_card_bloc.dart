import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'all_expenses_card_event.dart';
part 'all_expenses_card_state.dart';

class AllExpensesCardBloc
    extends Bloc<AllExpensesCardEvent, AllExpensesCardState> {
  AllExpensesCardBloc() : super(AllExpensesCardInitial()) {
    on<ChangeCardEvent>((event, emit) {
      emit(ChangeCardState(newIndex: event.newIndex));
    });
  }
}
