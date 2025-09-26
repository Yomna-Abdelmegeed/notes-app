part of 'read_note_cubit.dart';

sealed class ReadNoteState {}

final class ReadNoteInitial extends ReadNoteState {}

final class ReadNoteSuccess extends ReadNoteState {
  final List<NoteModel> notes;

  ReadNoteSuccess({required this.notes});
}
