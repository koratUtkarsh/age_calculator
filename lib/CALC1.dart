import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController cyear =
      TextEditingController(text: "${DateTime.now().year}");
  TextEditingController byear = TextEditingController();
  var c = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Age Calculator"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Birth Year",
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
              SizedBox(
                height: 18,
              ),
              TextField(
                controller: byear,
                decoration: InputDecoration(
                  hintText: "YYYY",
                  hintStyle: TextStyle(color: Colors.teal.shade100),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade200)),
                ),
              ),
              Text(
                "Current Year",
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
              SizedBox(
                height: 18,
              ),
              TextField(
                controller: cyear,
                decoration: InputDecoration(
                  hintText: "YYYY",
                  hintStyle: TextStyle(color: Colors.teal.shade100),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade200)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    var CY = cyear.text;
                    var BY = byear.text;

                    int a = int.parse(CY);
                    int b = int.parse(BY);

                    setState(() {
                      c = a - b;
                      print("$c");
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.teal.shade100,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.teal),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 30,
                  width: 80,
                  alignment: Alignment.center,
                  child: Text(
                    "Age is $c",
                    style: TextStyle(fontSize: 18, color: Colors.teal),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal),
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
