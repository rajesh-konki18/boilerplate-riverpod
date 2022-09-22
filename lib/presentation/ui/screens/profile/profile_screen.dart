import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/extensions/context_extension.dart';
import '../../../../core/utils/styles/dimensions/ui_dimensions.dart';
import '../../widgets/common/offer_card.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: (MediaQuery.of(context).size.height * 0.3).h,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIDimensions.verticalSpace(10),
                Text(
                  "Hi, Rajesh Konki",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontWeight: FontWeight.w300),
                  overflow: TextOverflow.ellipsis,
                ),
                UIDimensions.verticalSpace(10),
                Text(
                  "\$ 300",
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: context.secondaryColor),
                  overflow: TextOverflow.ellipsis,
                ),
                UIDimensions.verticalSpace(6),
                Text(
                  "Cashback savings",
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                      fontWeight: FontWeight.w400, color: context.primaryColor),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
