import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';

class ChipsOptions extends StatefulWidget {
  const ChipsOptions({super.key});

  @override
  State<ChipsOptions> createState() => _ChipsOptionsState();
}

class _ChipsOptionsState extends State<ChipsOptions> {
  List<String> tags = [];

  List<String> options = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ChipsChoice.multiple(
        wrapped: true,
        value: tags,
        onChanged: ((value) => setState(
              () {
                tags = value;
              },
            )),
        choiceItems: C2Choice.listFrom(
          source: options,
          value: (i, v) => v,
          label: (i, v) => v,
        ),
        choiceStyle: C2ChipStyle.filled(
          color: const Color(0XFFFFFFFF),
          foregroundColor: const Color(0XFFF9586A8),
          borderWidth: 0,
          borderOpacity: 0,
          borderRadius: const BorderRadius.all(Radius.circular(27)),
          selectedStyle: const C2ChipStyle(
            foregroundColor: Color(0xfff6c0ee4),
            backgroundColor: Color(0XFFFE2CBFF),
            borderRadius: BorderRadius.all(
              Radius.circular(27),
            ),
          ),
        ),
        choiceCheckmark: true,
      ),
    );
  }
}
