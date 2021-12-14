import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:we/style.dart';

class SlidingCardsView extends StatefulWidget {
  const SlidingCardsView({Key? key}) : super(key: key);

  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  late PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page!);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

//size card
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
            name: 'Celebrating our most special day',
            date: '17 DEC 2021',
            assetName: 'image1.png',
            offset: pageOffset,
          ),
          // SlidingCard(
          //    name:'sdfsdf',
          //   date:'',
          //   assetName: 'detail.png',
          //   offset: pageOffset - 1,
          // ),

          DetailCard(
            offset: pageOffset - 1,
          )
        ],
      ),
    );
  }
}

class DetailCard extends StatelessWidget {
  final double offset;
  const DetailCard({
    Key? key,
    required this.offset,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 14),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Celebrating our most special day please join us',
                  style: normalFontEN,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child: Image(
                //     image: AssetImage('assets/images/wedding-ring.png'),
                //     height: 50,
                //     width: 50,
                //     alignment: Alignment.center,
                //   ),

                //   //   FaIcon(
                //   //   FontAwesomeIcons.userFriends,
                //   //   color: Colors.red,
                //   // )
                // ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'คุณมานบ วงษ์กรณ์',
                      style: normalFontTH_s,
                      textAlign: TextAlign.center,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'คุณธัญวรัฒว์ นันทะชัย',
                      style: normalFontTH_s,
                      textAlign: TextAlign.center,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'และ',
                      style: normalFontTH_s,
                      textAlign: TextAlign.center,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'คุณทิพย์ภาภรณ์ เกียรติกูล',
                      style: normalFontTH_s,
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'ขอเรียนเชิญเพื่อเป็นเกียรติในงานเลี้ยงรับรองเนื่องในพิธีฉลองมงคลสมรส',
                      style: subtitleFontTH,
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'นางสาวพนิตกานต์ นันทะชัย',
                    style: titleFontTH,
                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('assets/images/wedding-ring.png'),
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'นายรุ่งอนันต์ ต่อนคำสนธิ์',
                      style: titleFontTH,
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'วันศุกร์ที่ 17 ธันวาคม พ.ศ. 2564',
                      style: normalFontTH_s,
                      textAlign: TextAlign.center,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'ณ ห้อง Grand Ballroom',
                      style: normalFontTH_s,
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      'โรงแรม Le Méridien Chiang Mai (เลอ เมอริเดียน เชียงใหม่)',
                      style: subtitleFontTH,
                      textAlign: TextAlign.center,
                    )),

                Align(
                    alignment: Alignment.center,
                    child: Text(
                      '18:00 น. ขอเชิญร่วมรับประทานอาหาร ฉลองงานมงคลสมรส ',
                      style: normalFontTH_s,
                      textAlign: TextAlign.center,
                    )),

                Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('assets/images/color.png'),
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final String assetName;
  final double offset;

  const SlidingCard({
    Key? key,
    required this.name,
    required this.date,
    required this.assetName,
    required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 14),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              child: Image.asset(
                'assets/images/$assetName',
                height: MediaQuery.of(context).size.height * 0.6,
                alignment: Alignment(-offset.abs(), 0),
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: CardContent(
                name: name,
                date: date,
                offset: gauss,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final String date;
  final double offset;

  const CardContent(
      {Key? key, required this.name, required this.date, required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(
              name,
              style: titleFontEN,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 8),
          Transform.translate(
            offset: Offset(32 * offset, 0),
            child: Text(
              date,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
