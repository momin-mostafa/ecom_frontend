import 'package:ecom_frontend/app/data/widget/custom_animated_container/animated_container.dart';
import 'package:ecom_frontend/app/data/widget/custom_animated_container/sidebar_for_animated_container.dart';
import 'package:ecom_frontend/app/data/widget/page_card/page_card.dart';
import 'package:ecom_frontend/app/data/widget/page_card/page_card_button.dart';
import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:ecom_frontend/app/data/widget/search_bar/search_bar.dart';
import 'package:flutter/material.dart';

class CommonWidgetFactory {
  static Widget createScaffold({Widget? body}) {
    return CustomScaffold(body: body);
  }
  // static Widget createScaffold_body({required Widget? body}){
  //   return CustomScaffold(body: body);
  // }

  static Widget createPageCard() {
    return const PageCard();
  }

  static Widget createSearchBar(
      {TextEditingController? textEditingController, String? lable}) {
    return SearchBar(
      textEditingController: textEditingController,
      lable: lable,
    );
  }

  static Widget createAnimatedContainer({Widget? child}) {
    return CustomAnimatedContainer(
      child: child ?? Container(),
    );
  }

  static Widget createSideBar() {
    return const SideBar();
  }

  static Widget createPageCardButton({void Function()? onTap, String? text}) {
    return PageCardButton(onTap: onTap, text: text ?? 'Explore Now');
  }
}
