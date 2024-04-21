import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'incom_chart_event.dart';
part 'incom_chart_state.dart';

int activeIndex = -1;

class IncomChartBloc extends Bloc<IncomChartEvent, IncomChartState> {
  IncomChartBloc() : super(IncomChartInitial()) {
    on<IncomChartEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
