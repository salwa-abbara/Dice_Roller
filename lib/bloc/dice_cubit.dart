
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'dice_state.dart';



class DiceCubit extends Cubit<DiceState>{
  DiceCubit() : super(const DiceState());

  void randomNumber(){
    emit(state.copyWith(dice:  Random().nextInt(6) + 1));
  }
}