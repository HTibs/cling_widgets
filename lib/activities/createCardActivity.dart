import 'package:flutter/material.dart';

import 'package:cling_widgets/widgets/customRadioButton.dart';
import 'package:cling_widgets/widgets/customRadioButtonDecresedSize.dart';
import 'package:cling_widgets/models/radioModel.dart';

class CreateCardActivity extends StatefulWidget {
  @override
  _CreateCardActivityState createState() => _CreateCardActivityState();
}

sdsds

class _CreateCardActivityState extends State<CreateCardActivity> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    Color backgroundColor = const Color(0xFFF9F9F9);
    Color hintTextColor = const Color(0xFFDDDDDD);
    Color textColor = const Color(0xFF4C4C4C);

    RadioModel club = RadioModel(false, 'Club', 'local_bar');
    RadioModel food = RadioModel(false, 'Food', 'local_dining');
    RadioModel travel = RadioModel(false, 'Travel', 'terrain');
    RadioModel date = RadioModel(false, 'Date', 'favorite');
    RadioModel movie = RadioModel(false, 'Movie', 'local_movies');
    RadioModel male = RadioModel(false, 'Male', 'male');
    RadioModel female = RadioModel(false, 'Female', 'female');
    RadioModel any = RadioModel(false, 'Any', 'anyone is fine');

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              'Create Card',
              style: TextStyle(color: hintTextColor),
            ),
            backgroundColor: backgroundColor),
        body: Container(
          width: screenWidth,
          height: screenHeight,
          color: backgroundColor,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                width: screenWidth,
                height: 100.0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                width: screenWidth,
                height: 125.0,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Type'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CustomRadioButton(club),
                        CustomRadioButton(food),
                        CustomRadioButton(travel),
                        CustomRadioButton(date),
                        CustomRadioButton(movie),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    width: screenWidth / 2 - 20,
                    height: 80.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('Date'),
                            Text('12/01/2020'),
                            SizedBox(
                              width: 10.0,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('Time'),
                            Text('12:00 pm'),
                            SizedBox(
                              width: 10.0,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    width: screenWidth / 2 - 20,
                    height: 80.0,
                    child: Column(
                      children: <Widget>[
                        Text('Company?'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CustomRadioButtonDecresedSize(male),
                            CustomRadioButtonDecresedSize(female),
                            CustomRadioButtonDecresedSize(any),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                width: screenWidth,
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
