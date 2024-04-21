part of 'custom_drawer_item_bloc.dart';

@immutable
sealed class CustomDrawerItemState {}

final class CustomDrawerItemInitial extends CustomDrawerItemState {}

final class ChangePreviewState extends CustomDrawerItemState {
  final int newIndex;

  ChangePreviewState({required this.newIndex});
}
