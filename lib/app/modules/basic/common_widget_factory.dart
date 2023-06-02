import 'package:ecom_frontend/app/data/enums/animated_container_type.dart';
import 'package:ecom_frontend/app/data/widget/custom_animated_container/animated_container.dart';
import 'package:ecom_frontend/app/data/widget/custom_animated_container/sidebar_for_animated_container.dart';
import 'package:ecom_frontend/app/data/widget/page_card/page_card.dart';
import 'package:ecom_frontend/app/data/widget/page_card/page_card_button.dart';
import 'package:ecom_frontend/app/data/widget/scaffold/custom_scaffold.dart';
import 'package:ecom_frontend/app/data/widget/search_bar/search_bar.dart'
    as search;
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
    return search.SearchBar(
      textEditingController: textEditingController,
      lable: lable,
    );
  }

  static Widget createMaleContainer({Widget? child}) {
    return CustomAnimatedContainer(
      type: UserType.male,
      child: child ?? Container(),
    );
  }

  static Widget createFemaleContainer({Widget? child}) {
    return CustomAnimatedContainer(
      type: UserType.female,
      child: child ?? Container(),
    );
  }

  static Widget createMaleSideBar({Widget? child}) {
    return SideBar(
      type: UserType.male,
      child: child,
    );
  }

  static Widget createFemaleSideBar({Widget? child}) {
    return SideBar(
      type: UserType.female,
      child: child,
    );
  }

  static Widget createPageCardButton({void Function()? onTap, String? text}) {
    return PageCardButton(onTap: onTap, text: text ?? 'Explore Now');
  }
}
