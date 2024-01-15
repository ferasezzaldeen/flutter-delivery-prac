import 'package:delivery_app/widgets/Listing_widget.dart';
import 'package:flutter/material.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF6F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFFF6F5F5),
        toolbarHeight: 180,
        title: const Text(
          'Vegetables',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        flexibleSpace: const Align(
          alignment: Alignment.topRight,
          child: Image(
            image: AssetImage('assets/images/Vegetables.png'),
            height: 194,
            width: 194,
            fit: BoxFit.contain,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: SizedBox(
            height: 50,
            width: 374,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27.0),
                    borderSide:
                        const BorderSide(color: Color(0XFFD9D0E3), width: 1),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Search",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27.0),
                    borderSide:
                        const BorderSide(color: Color(0XFFD9D0E3), width: 1),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: const Column(
        children: [
          ListingWidget(),
        ],
      ),
    );
  }
}
