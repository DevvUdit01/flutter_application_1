import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "FlopKArt".text.xl4.bold.color(context.theme.hintColor).make(),
              "Trending products".text.xl2.make(),
      ],
    );
}
}