// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'custom_drawer_item_bloc.dart';

@immutable
sealed class CustomDrawerItemEvent {}

class ChangePreviewEvent extends CustomDrawerItemEvent {
  final int newIndex;
  ChangePreviewEvent({
    required this.newIndex,
  });
}
