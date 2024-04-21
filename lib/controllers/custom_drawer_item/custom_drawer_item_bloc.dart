import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'custom_drawer_item_event.dart';
part 'custom_drawer_item_state.dart';

int index = 0;

class CustomDrawerItemBloc
    extends Bloc<CustomDrawerItemEvent, CustomDrawerItemState> {
  CustomDrawerItemBloc() : super(CustomDrawerItemInitial()) {
    on<ChangePreviewEvent>((event, emit) {
      emit(ChangePreviewState(newIndex: event.newIndex));
    });
  }
}
