import 'package:delivery_app/dummy_date/dummy_vegetables.dart';
import 'package:delivery_app/widgets/chips_options.dart';
import 'package:delivery_app/widgets/list_item.dart';
import 'package:flutter/material.dart';

class ListingWidget extends StatelessWidget {
  const ListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> listItems = [
      const ChipsOptions(),
      ...dummyVegetables.map((vegetable) => ListItem(vegetable: vegetable))
    ];
    return Expanded(
      child: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: ((context, index) => listItems[index]),
      ),
    );
    // return Container(
    //   height: 500,
    //   child: SingleChildScrollView(
    //     child: Column(
    //       children: [...listItems],
    //     ),
    //   ),
    // );
  }
}
