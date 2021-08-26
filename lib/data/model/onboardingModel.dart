import 'package:flutter/material.dart';

class OnBoardingModel {
  String? img;
  String? text;
  String? desc;

  OnBoardingModel({this.img, this.text, this.desc});
}

List<OnBoardingModel> screen = <OnBoardingModel>[
  OnBoardingModel(
    img: "assets/1st_img.svg",
    text: 'Meet the Doctor',
    desc:
        'Find and book appointments with doctrs, clinic, Hospital.Ask free health Questions to Doctors. ',
  ),
  OnBoardingModel(
    img: "assets/2nd_img.svg",
    text: 'Online Pharmacy',
    desc:
        "Order any Medicine or health product and we'll deliever it for you. Enjoy discount on everything. ",
  ),
  OnBoardingModel(
    img: "assets/3rd_img.svg",
    text: 'Online Consultation',
    desc:
        "Consult 50+ Online Doctors through chat, call and get answer to all your medical issues online.",
  ),
];
