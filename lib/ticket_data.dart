import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketData extends StatelessWidget {
  const TicketData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 140.h,
          width: 250.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 2.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
              )
            ],
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                'assets/abc.jpeg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 90.h,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  //style: BorderStyle.solid,
                  width: 0.1,
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "ABCD Library",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\u20B9 5000",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 27, 85, 30),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Text(
                      "Status: ",
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      "Available",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 27, 85, 30)),
                    ),
                    const Spacer(),
                    const FiveStarRating(
                      rating: 4,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  children: const [
                    Text(
                      "by Owner:",
                      style: TextStyle(
                          // fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    Spacer(),
                    Text(
                      "John M.",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 220.w,
          height: 205.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Flexible(
                    child: Text(
                      "User Name",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ),
                  Spacer(),
                  Flexible(
                    child: Text(
                      "Seat No:",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "Jaydeep",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 20.w,
                  ),
                  Flexible(
                    child: Text(
                      "24",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: const [
                  Flexible(
                    child: Text(
                      "Shift Name",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  Flexible(
                    child: Text(
                      "Time",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "Xyz",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 8, 75, 10)),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 85.w,
                  ),
                  Text(
                    "07:00-10:00 PM",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 44.h,
              ),
              DottedLine(
                  height: 1.0,
                  color: Color.fromARGB(255, 143, 137, 137),
                  thickness: 0.7),
              SizedBox(
                height: 10.h,
              ),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.file_download_outlined,
                    color: Color.fromARGB(255, 2, 75, 4),
                    size: 30,
                  ),
                  onPressed: () {
                    // Download file
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FiveStarRating extends StatelessWidget {
  final int rating;

  const FiveStarRating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "4.0",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 27, 85, 30)),
        ),
        for (int i = 0; i < rating; i++)
          const Icon(
            Icons.star,
            color: Color.fromARGB(211, 253, 153, 3),
            size: 20,
          ),
        for (int i = rating; i < 5; i++)
          const Icon(
            Icons.star_border,
            color: Colors.grey,
            size: 20,
          ),
      ],
    );
  }
}

class DottedLine extends StatelessWidget {
  final double height;
  final Color color;
  final double thickness;

  const DottedLine(
      {Key? key,
      this.height = 1.0,
      this.color = Colors.black,
      this.thickness = 1.0});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: _DottedLinePainter(color: color, thickness: thickness),
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  final Color color;
  final double thickness;

  _DottedLinePainter({this.color = Colors.black, this.thickness = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final double dashWidth = 5.0;
    final double dashSpace = 3.0;
    double currentX = 0.0;
    while (currentX < size.width) {
      canvas.drawLine(
          Offset(currentX, 0.0), Offset(currentX + dashWidth, 0.0), paint);
      currentX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
