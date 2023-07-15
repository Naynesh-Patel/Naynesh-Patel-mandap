import 'package:flutter/material.dart';
import 'package:mandap/custom_button.dart';
import 'package:mandap/custom_text_field.dart';
import 'home.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: ListView(
          children: [
            Image.asset("assets/images/home_logo.png",height: 200,),
            const Center(
              child: Text("શ્રી આડમોર, મોટા ફળિયા ",style: TextStyle(
                color: Colors.red,
                fontWeight:  FontWeight.w800,
                fontSize: 34,
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            const Center(
              child:  Text("આડમોર(મોટા ફળિયા )",style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: "નામ ",
              radius: 8,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: "તારીખ ",
              radius: 8,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hintText: "વોટ્સેપ નંબર ",
              radius: 8,
            ),

          ],
        ),
      ),
      bottomNavigationBar:    CustomButton(
        borderRadius: 0,
        buttonText: "આગળ વધો ",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Home()),
          );
        },
        color: Colors.red,
      ),
    );
  }
}
