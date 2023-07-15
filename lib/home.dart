import 'package:flutter/material.dart';
import 'package:mandap/custom_button.dart';
import 'package:mandap/custom_text_field.dart';
import 'package:mandap/vasan_page.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isChecked = false;
  @override
  void setState(VoidCallback fn) {

    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "જયઅંબે મંડપ ડેકોરેશન ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            const CustomTextField(
              hintText: "સર્ચ કરો....",
              radius: 8,
              suffixFixWidget: Icon(Icons.search_rounded),
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      isChecked = value!;
                    }),

                Text("(મંડપ )",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                Text("(૧ ગાળાના ૫૦૦)"),
                SizedBox(
                  width: 30,
                ),

                Material(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.black,width: 1)),
                      child: const Text("મંડપ",
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Material(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.black,width: 1)),
                      child: const Text("100",
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ),
                  ),
                ),

              ],
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
          MaterialPageRoute(builder: (context) =>  VasanPage()),
        );
      },
      color: Colors.red,
    ),
    );

  }
}
