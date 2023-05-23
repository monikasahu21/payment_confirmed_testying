import 'package:flutter/material.dart';
import 'package:payment_confirmed_testing/ticket_data.dart';
import 'package:ticket_widget/ticket_widget.dart';
//import 'package:flutter_ticket_widget/flutter_ticket_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: MyTicketWidget(),
    );
  }
}

class MyTicketWidget extends StatefulWidget {
  @override
  _MyTicketWidgetState createState() => _MyTicketWidgetState();
}

class _MyTicketWidgetState extends State<MyTicketWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 145, 1),
        body: Padding(
          padding: EdgeInsets.only(top: 4, bottom: 8.0, left: 8.0, right: 8.0),

          //padding: EdgeInsets.only(right: 40, left: 40, bottom: 45, top: 30),
          child: Column(
            children: [
              Container(
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/approval.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              const Text(
                'Payment Confirmed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 5.h,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: TicketWidget(
                      width: 280.w,
                      height: 480.h,
                      isCornerRounded: true,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: TicketData(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
