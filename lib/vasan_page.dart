import 'package:flutter/material.dart';
import 'package:mandap/custom_button.dart';

class VasanPage extends StatefulWidget {
  const VasanPage({Key? key}) : super(key: key);

  @override
  State<VasanPage> createState() => _VasanPageState();
}

class _VasanPageState extends State<VasanPage> {
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
        child: Padding(

          padding: const EdgeInsets.all(8.0),
          child: Table(

            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            border:TableBorder.all(width: 2.0,color: Colors.black),
            children: [
              TableRow(
                  children: [
                    Center(child: Text("નંગ ",textScaleFactor: 1.5)),
                    Center(child: Text("વિગત ",textScaleFactor: 1.5)),
                    Center(child: Text("ક્રમ",textScaleFactor: 1.5,)),

                  ]
              ),
              TableRow(
                  children: [
                    Center(child: Text("0 ",textScaleFactor: 1.5)),
                    Center(child: Text("તપેલા મોટા ",textScaleFactor: 1.5)),
                    Center(child: Text("1",textScaleFactor: 1.5)),
                  ]
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:    CustomButton(
        borderRadius: 0,
        buttonText: "આગળ વધો ",
        onTap: () {

        },
        color: Colors.red,
      ),
    );
  }
}
