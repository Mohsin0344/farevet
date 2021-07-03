import 'package:farevet/Constants/ConstantColors.dart';
import 'package:farevet/Constants/Constants.dart';
import 'package:farevet/Constants/SharedAppBar.dart';
import 'package:farevet/Constants/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;

class CalendarScreenPetOwner extends StatefulWidget {
  @override
  _CalendarScreenPetOwnerState createState() => _CalendarScreenPetOwnerState();
}

Iterable<TimeOfDay> getTimes(TimeOfDay startTime, TimeOfDay endTime, Duration step) sync* {
  var hour = startTime.hour;
  var minute = startTime.minute;

  do {
    yield TimeOfDay(hour: hour, minute: minute);
    minute += step.inMinutes;
    while (minute >= 60) {
      minute -= 60;
      hour++;
    }
  } while (hour < endTime.hour ||
      (hour == endTime.hour && minute <= endTime.minute));
}
final startTime = TimeOfDay(hour: 9, minute: 0);
final endTime = TimeOfDay(hour: 22, minute: 0);
final step = Duration(hours: 1);

class _CalendarScreenPetOwnerState extends State<CalendarScreenPetOwner> {
  DateTime _currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: ConstantColors.backgroundColor,
        body: ListView(
          padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier * 5,
            left: SizeConfig.widthMultiplier * 5,
            right: SizeConfig.widthMultiplier * 5,
            bottom: SizeConfig.heightMultiplier * 5
          ),
          children: [
            SharedAppBar(
              leadingIcon: 'images/cancel.png',
              titleText: 'Book Appointment',
              trailingIcon: 'images/help.png',
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Please select a date and time onto which you want to',
                style: CustomFonts.googleBodyFont(
                  color: ConstantColors.textColor,
                  fontSize: CustomSizes.bodyText * 1.2,
                  letterSpacing: 1.0
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'book an appointment.',
                style: CustomFonts.googleBodyFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.bodyText * 1.2,
                    letterSpacing: 1.0
                ),
              ),
            ),
        SizedBox(
          height: SizeConfig.heightMultiplier *  4,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Available Date',
            style: CustomFonts.googleBodyFont(
              color: ConstantColors.textColor,
              fontSize: CustomSizes.headerText * 0.85,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
            SizedBox(
              height: SizeConfig.heightMultiplier ,
            ),
        Container(
          color: Colors.white,
         // margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: CalendarCarousel<Event>(
            onDayPressed: (DateTime date, List<Event> events) {
              this.setState(() => _currentDate = date);
            },
            weekendTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            thisMonthDayBorderColor: Colors.transparent,
            customDayBuilder: (   /// you can provide your own build function to make custom day containers
                bool isSelectable,
                int index,
                bool isSelectedDay,
                bool isToday,
                bool isPrevMonthDay,
                TextStyle textStyle,
                bool isNextMonthDay,
                bool isThisMonthDay,
                DateTime day,
                ) {
              /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
              /// This way you can build custom containers for specific days only, leaving rest as default.

              // Example: every 15th of month, we have a flight, we can place an icon in the container like that:
              if (day.day == 15) {
                return null;
              } else {
                return null;
              }
            },
            weekFormat: false,
            daysTextStyle: CustomFonts.googleBodyFont(
              color: ConstantColors.textColor,
              fontSize: CustomSizes.bodyText
            ),
            weekdayTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            headerTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            inactiveWeekendTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            inactiveDaysTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            nextDaysTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            markedDateCustomTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            prevDaysTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            markedDateMoreCustomTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            selectedDayTextStyle: CustomFonts.googleBodyFont(
                color: Colors.white,
                fontSize: CustomSizes.bodyText
            ),
            todayTextStyle: CustomFonts.googleBodyFont(
                color: ConstantColors.textColor,
                fontSize: CustomSizes.bodyText
            ),
            todayBorderColor: Colors.transparent,
            todayButtonColor: Colors.transparent,
            showOnlyCurrentMonthDate: true,
            minSelectedDate: DateTime.now(),
            height: SizeConfig.heightMultiplier * 38,
            childAspectRatio: 1.3,
            selectedDateTime: _currentDate,
            iconColor: ConstantColors.textColor,
            selectedDayButtonColor: Color(0xff5A4371),
            selectedDayBorderColor: Color(0xff5A4371),
            daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
          ),
        ),
            SizedBox(
              height: SizeConfig.heightMultiplier ,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Time',
                style: CustomFonts.googleBodyFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.headerText * 0.85,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Time(),
            SizedBox(
              height: SizeConfig.heightMultiplier ,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Services Selected:',
                style: CustomFonts.googleBodyFont(
                    color: ConstantColors.textColor,
                    fontSize: CustomSizes.headerText * 0.85,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 3.5,
                crossAxisSpacing: SizeConfig.widthMultiplier,
                mainAxisSpacing: SizeConfig.heightMultiplier
              ),
              itemBuilder: (BuildContext context, int index) {
                return  Container(
                  height: SizeConfig.heightMultiplier * 2.5,
                  width: SizeConfig.widthMultiplier * 20,
                  decoration: BoxDecoration(
                      color: Color(0xff210241),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text(
                      'Veterinary',
                      style: CustomFonts.googleBodyFont(
                          color: Colors.white,
                          fontSize: CustomSizes.bodyText
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),

        bottomNavigationBar: Container(
          height: SizeConfig.heightMultiplier * 8,
          decoration: BoxDecoration(
              color: Color(0xffEBEBEB),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12)
              )
          ),
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                        text: 'Total:',
                        style: CustomFonts.googleBodyFont(
                            color: ConstantColors.textColor,
                            fontSize: CustomSizes.headerText * 1.2,
                            fontWeight: FontWeight.w500
                        ),
                        children: [
                          TextSpan(
                            text: '  \$200',
                            style: CustomFonts.googleBodyFont(
                                color: ConstantColors.textColor,
                                fontSize: CustomSizes.headerText * 1.2,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ]
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 7,
                      vertical: SizeConfig.heightMultiplier * 1.3
                  ),
                  child: InkWell(
                    onTap: (){
                      // Navigator.push(context, PageTransition(
                      //     type: PageTransitionType.rightToLeft,
                      //     child: CalendarScreenPetOwner()
                      // )
                      // );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: ConstantColors.buttonColor,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(
                        child: Text(
                          'Book Now',
                          style: CustomFonts.googleBodyFont(
                              color: Colors.white,
                              fontSize: CustomSizes.bodyText * 1.5,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  bool check=false;
  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final times = getTimes(startTime, endTime, step)
        .map((tod) => tod.format(context))
        .toList();
    return Container(
      height: SizeConfig.heightMultiplier * 6,
      child: ListView.builder(
        itemCount: times.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                  left: index != 0 ?SizeConfig.widthMultiplier * 2 : 0
              ),
              child: InkWell(
                onTap: (){
                  if(check==true){
                    print('trueeeeeeeeeeeeeeeeeeeeeeeee');
                    setState(() {
                      selectedIndex=index;
                      check=false;
                    });
                  }
                  else{
                    print('falseeeeeeeeeeeeeeeeeeeeeeeeeee');
                    setState(() {
                      selectedIndex=200;
                      check=true;
                    });
                  }
                },
                child: Container(
                  height: SizeConfig.heightMultiplier * 4,
                  width: SizeConfig.widthMultiplier * 25,
                  decoration: BoxDecoration(
                      color: selectedIndex==index?
                      Color(0xff210241):
                      Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Text(
                      '${times[index]}',
                      style: CustomFonts.googleBodyFont(
                        color: selectedIndex==index?
                        Colors.white: ConstantColors.textColor,
                        fontSize: CustomSizes.bodyText
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

