import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HealthNeedScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HealthNeedScreenState();
    throw UnimplementedError();
  }
}

class _HealthNeedScreenState extends State<HealthNeedScreen> {
  double _height;
  double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    bool checkBoxValue = false;
    bool radioValue = true;
    bool radioValue2 = false;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(56, 142, 60, 1.0),
        primary: true,
        title: Text(
          'Health Need',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 40,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Container(
        height: _height,
        width: _width,
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Get doctor appointments instantly',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Image.asset(
                'images/click_health1.PNG',
                height: 100.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                "Register as",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Radio(
                      value: radioValue,
                      groupValue: radioValue,
                      onChanged: (value) => setState(() => radioValue = value),
                      activeColor: Colors.black54,
                    )),
                Text(
                  "Patient",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Radio(
                      value: radioValue2,
                      groupValue: 0,
                      onChanged: (value) => setState(() => radioValue2 = value),
                      activeColor: Colors.black54,
                    )),
                Text(
                  "Doctor",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool newValue) {
                      setState(() {
                        checkBoxValue = newValue;
                      });
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Text("I accept all terms and conditions")),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
                child: ButtonTheme(
              minWidth: 350.0,
              height: 50.0,
              buttonColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ),
            )),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 200),
              child: Text(
                "Already have an account",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/doctor_girl.png"),
                    radius: 35,
                    backgroundColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Call for help",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/call2.PNG"),
                      backgroundColor: Colors.black,
                      radius: 40,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
