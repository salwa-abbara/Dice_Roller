part of 'dice_cubit.dart';

class DiceState{
  const DiceState({this.dice = 1});
  final int dice;

  DiceState copyWith({int? dice}) {
    return DiceState(dice: dice?? this.dice);
  }
}