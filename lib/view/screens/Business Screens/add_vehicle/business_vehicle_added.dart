import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yellowline/global_widgets/custom_button.dart';
import 'package:yellowline/view/screens/Drivers%20Screen/add_driver_screen/add_driver_screen.dart';

class BusinessVehicleAdded extends StatefulWidget {
  const BusinessVehicleAdded({Key? key}) : super(key: key);

  @override
  State<BusinessVehicleAdded> createState() => _BusinessVehicleAddedState();
}

class _BusinessVehicleAddedState extends State<BusinessVehicleAdded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181F30),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 28.h,),
              Container(
                height: 25.h,
                width: 35.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff424755),
                ),
                child: Center(
                  child: Image(image: AssetImage('assets/truck.png'),height: 13.h,),
                ),
              ),
              //SizedBox(height: 1.h,),
              Text(
                'Vehicle Added Successfully',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 32.h,),
              CustomButton(
                borderColor: Color(0xffFFCC1B),
                buttonColor: Color(0xffFFCC1B),
                textColor: Color(0xff181F30),
                text: 'Ok',
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddDriverScreen(),));
        },
      ),
    );
  }
}
