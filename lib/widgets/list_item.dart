import 'package:delivery_app/models/vegetable.dart';
import 'package:delivery_app/screens/vegetables_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.vegetable});

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
          padding: EdgeInsets.all(20.0.sp),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  vegetable.images[0],
                ),
                width: 177.sp,
                height: 128.sp,
              ),
              SizedBox(width: 20.sp),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.sp,
                    child: Text(
                      vegetable.title,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.sp,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        vegetable.price.toString(),
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '€ / piece',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFF9586A8)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22.sp,
                  ),
                  Row(
                    children: [
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/heart.svg'),
                        style: IconButton.styleFrom(
                            fixedSize: Size(78.sp, 40.sp),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color(0XFFFD9D0E3)),
                              borderRadius: BorderRadius.circular(8),
                            )),
                      ),
                      SizedBox(width: 10.sp),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(78.sp, 40.sp),
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
