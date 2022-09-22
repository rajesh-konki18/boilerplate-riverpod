import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final Widget? categoryIcon;
  final String? categoryName;
  final TextStyle? categoryTextStyle;
  final String? offerImage;
  final Color? cardColor;
  final String? offerText;
  final String? companyTitle;
  final Widget? companyLogo;
  final String? companyTextStyle;
  final Function? onClick;

  const OfferCard(
      {Key? key,
      this.cardColor,
      this.categoryIcon,
      this.categoryName,
      this.categoryTextStyle,
      this.companyLogo,
      this.companyTextStyle,
      this.companyTitle,
      this.offerImage,
      this.offerText,
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4, bottom: 8),
      color: cardColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                SizedBox(
                  child: categoryIcon,
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    categoryName ?? "",
                    style: categoryTextStyle?.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.26,
            child: Stack(
              children: [
                Image.asset(
                  offerImage ?? "",
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.22,
                ),
                Positioned(
                    right: 0,
                    child: IconButton(
                        onPressed: () {
                          // need to add to favorite
                        },
                        icon: const Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                        ))),
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        width: 60,
                        color: Colors.white,
                        child: companyLogo,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 4),
                        color: const Color.fromRGBO(196, 196, 196, 0.2),
                        child: Text(
                          offerText ?? "",
                          style: categoryTextStyle?.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        )
                        ,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
            child: Text(
              companyTitle ?? "",
              style: categoryTextStyle?.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              child: Row(children: [
                Text(
                "Details",
                style: categoryTextStyle?.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(107, 192, 179, 1) // need to take from theme context
            ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Icon(Icons.arrow_forward, color: Color.fromRGBO(107, 192, 179, 1), size: 16,)
              ],),
              onTap: (){},
            ),
          )
        ],
      ),
    );
  }
}