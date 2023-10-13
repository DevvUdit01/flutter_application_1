import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/pages/HomeDetail_Page.dart';
import 'package:flutter_application_1/widgets/home_widgets/Catalog_Image.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
        final catalog =CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context, 
            MaterialPageRoute(
            builder: (context) => homeDetailPage(
            Catalog: catalog,
            ),
            ),
            ),
          child: CatalogItem(catalog: catalog),);
      },
    );
}
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key,required this.catalog,}) 
  :assert(catalog!=null),
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
         Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image)),
         Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(context.theme.hintColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$ ${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(context.theme.focusColor),
                   shape: MaterialStateProperty.all(StadiumBorder()),
                 ),
                  onPressed: () {}, 
                  child: "Add to Cart".text.white.make()
                  )
              ],
            ).pOnly(right: 18.0)
          ],
         ))
        ],
      )
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}