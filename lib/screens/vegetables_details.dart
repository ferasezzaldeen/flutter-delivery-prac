import 'package:delivery_app/models/vegetable.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VegetableDetailsScreen extends StatefulWidget {
  const VegetableDetailsScreen({super.key, required this.vegetable});

  final Vegetable vegetable;

  @override
  State<VegetableDetailsScreen> createState() => _VegetableDetailsScreenState();
}

class _VegetableDetailsScreenState extends State<VegetableDetailsScreen> {
  int _currentImageIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF6F5F5),
      body: Stack(
        children: [
          CarouselSlider(
            carouselController: _carouselController,
            items: widget.vegetable.images
                .map((image) => Image(
                      image: AssetImage(image),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ))
                .toList(),
            options: CarouselOptions(
                enlargeCenterPage: true,
                viewportFraction: 1,
                height: 358,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentImageIndex = index;
                  });
                }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 258),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.vegetable.images.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(
                            _currentImageIndex == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 281),
            decoration: const BoxDecoration(
              color: Color(0XFFF6F5F5),
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(25),
                topStart: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 31, 20, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.vegetable.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        widget.vegetable.price.toString(),
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        '€ / piece',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFF9586A8)),
                      ),
                    ],
                  ),
                  Text(
                    '~ ${widget.vegetable.weight} gr / piece',
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF06BE77)),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    widget.vegetable.country,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.vegetable.description,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF9586A8)),
                  ),
                  const SizedBox(height: 56),
                  Row(
                    children: [
                      SizedBox(
                        width: 78,
                        height: 56,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/heart.svg'),
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: Color(0XFFFD9D0E3)),
                                borderRadius: BorderRadius.circular(8),
                              )),
                        ),
                      ),
                      const SizedBox(width: 21),
                      SizedBox(
                        height: 56,
                        width: 272,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF0BCE83),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          onPressed: () {},
                          icon:
                              SvgPicture.asset('assets/icons/shoppingcart.svg'),
                          label: const Text(
                            'ADD TO CART',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
