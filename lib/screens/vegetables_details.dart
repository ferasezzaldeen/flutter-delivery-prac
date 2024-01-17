import 'package:delivery_app/models/vegetable.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                height: 358.sp,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentImageIndex = index;
                  });
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 258.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.vegetable.images.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(entry.key),
                  child: Container(
                    width: 12.0.sp,
                    height: 12.0.sp,
                    margin: EdgeInsets.symmetric(horizontal: 4.0.sp),
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
            margin: EdgeInsets.only(top: 281.sp),
            decoration: const BoxDecoration(
              color: Color(0XFFF6F5F5),
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(25),
                topStart: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.sp, 31.sp, 20.sp, 0.sp),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.vegetable.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 16.sp),
                  Row(
                    children: [
                      Text(
                        widget.vegetable.price.toString(),
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '€ / piece',
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFF9586A8)),
                      ),
                    ],
                  ),
                  Text(
                    '~ ${widget.vegetable.weight} gr / piece',
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF06BE77)),
                  ),
                  SizedBox(height: 32.sp),
                  Text(
                    widget.vegetable.country,
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16.sp),
                  Text(
                    widget.vegetable.description,
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF9586A8)),
                  ),
                  SizedBox(height: 56.sp),
                  Row(
                    children: [
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/heart.svg'),
                        style: IconButton.styleFrom(
                            fixedSize: Size(78.sp, 56.sp),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color(0XFFFD9D0E3)),
                              borderRadius: BorderRadius.circular(8),
                            )),
                      ),
                      SizedBox(width: 21.sp),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(272.sp, 56.sp),
                            backgroundColor: Color(0XFF0BCE83),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/shoppingcart.svg'),
                        label: Text(
                          'ADD TO CART',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
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
