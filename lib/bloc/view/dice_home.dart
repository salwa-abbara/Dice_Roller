import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../dice_cubit.dart';

class BlocHome extends StatelessWidget {
  const BlocHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Random number and show the image
            BlocBuilder<DiceCubit, DiceState>(builder: (context, state) {
              return Image(
                image: AssetImage("img/${state.dice}.png"),
                height: 200,
              );
            }),
            const SizedBox(height: 50),
            //Roll button
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
              ),
              child: const Text('Roll the Dice'),
              onPressed: () => context.read<DiceCubit>().randomNumber(),
            ),
          ],
        ),
      ),
    );
  }
}
