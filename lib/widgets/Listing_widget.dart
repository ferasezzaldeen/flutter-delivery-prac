import 'package:delivery_app/dummy_date/dummy_vegetables.dart';
import 'package:delivery_app/widgets/list_item.dart';
import 'package:flutter/material.dart';

class ListingWidget extends StatelessWidget {
  const ListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: dummyVegetables.length,
        itemBuilder: ((context, index) => ListItem(
              vegetable: dummyVegetables[index],
            )),
      ),
    );
  }
}
