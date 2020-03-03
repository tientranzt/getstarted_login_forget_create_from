import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:getstarted/model/StartedData.dart';
import 'package:getstarted/model/StartedModel.dart';
import 'package:getstarted/widget/getstarted_container.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  List<StartedModel> data = [];

  @override
  void initState() {
    super.initState();
    data = StartedData().getStartedDate;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return GetStartedContainer(
            indexImage: index,
            title: data[index].title,
            desc: data[index].description,
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(
            margin: EdgeInsets.only(bottom: 70),),
      ),
    );
  }
}
