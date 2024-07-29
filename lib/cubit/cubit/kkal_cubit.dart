import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

// Класс состояния
class KkalState extends Equatable {
  final int value;

  const KkalState({required this.value});

  factory KkalState.initial() => const KkalState(value: 0);

  KkalState copyWith({int? value}) {
    return KkalState(
      value: value ?? this.value,
    );
  }

  @override
  List<Object?> get props => [value];
}

// Класс кубита
class KkalCubit extends Cubit<KkalState> {
  KkalCubit() : super(KkalState.initial());

  void kartoshka() => emit(state.copyWith(value: state.value + 100));
  void plov() => emit(state.copyWith(value: state.value + 200));
  void sup() => emit(state.copyWith(value: state.value + 150));
  void cola() => emit(state.copyWith(value: state.value + 150));
  void samsa() => emit(state.copyWith(value: state.value + 250));
  void manty() => emit(state.copyWith(value: state.value + 300));
  void burger() => emit(state.copyWith(value: state.value + 400));
  void enerdetik() => emit(state.copyWith(value: state.value + 250));
  void pepsi() => emit(state.copyWith(value: state.value + 140));
  void shaurma() => emit(state.copyWith(value: state.value + 300));
  void ric() => emit(state.copyWith(value: state.value + 200));
  void gracka() => emit(state.copyWith(value: state.value + 350));
  void makaron() => emit(state.copyWith(value: state.value + 200));
  void bread() => emit(state.copyWith(value: state.value + 100));
  void cake() => emit(state.copyWith(value: state.value + 400));
  void lag() => emit(state.copyWith(value: state.value + 500));

  // Метод для сброса состояния
  void reset() => emit(KkalState.initial());
}
