import 'package:flutter/material.dart';
import 'package:kindergarden/presentation/app/ui/styles.dart';

class ErrorBottomSheet extends StatelessWidget {
  final String? message;

  const ErrorBottomSheet({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(MyPaddings.large),
      color: MyColors.backgroundPrimary,
      child: SingleChildScrollView(
        child: Center(
          child: Text(message ?? '', style: MyTextStyles.mediumSecondary),
        ),
      ),
    );
  }
}
