import 'package:delivery_app/models/vegetable.dart';
import 'package:delivery_app/screens/vegetables_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListItem extends StatelessWidget {
  ListItem({super.key, required this.vegetable});

  final Vegetable vegetable;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VegetableDetailsScreen(
            vegetable: vegetable,
          ),
        ));
      },
      child: Card(
        color: Color(0XFFF6F5F5),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  vegetable.images[0],
                ),
                width: 177,
                height: 128,
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                    child: Text(
                      vegetable.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        vegetable.price.toString(),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        '€ / piece',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFF9586A8)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/heart.svg'),
                        style: IconButton.styleFrom(
                            fixedSize: const Size(78, 40),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color(0XFFFD9D0E3)),
                              borderRadius: BorderRadius.circular(8),
                            )),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(78, 40),
                            backgroundColor: const Color(0XFFF0BCE83),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        child:
                            SvgPicture.asset('assets/icons/shoppingcart.svg'),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
