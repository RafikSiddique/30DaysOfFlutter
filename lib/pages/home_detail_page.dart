import 'package:flutter/material.dart';
import 'package:flutter_application/models/catalog.dart';
import 'package:flutter_application/widgets/home_widgets/add_to_cart.dart';
//import 'package:flutter_application/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  // ignore: unnecessary_null_comparison
  const HomeDetailPage({Key? key, required this.catalog})
      // ignore: unnecessary_null_comparison
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            
                AddToCart(
                  catalog:catalog ).wh(120, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.xl.make(),
                    10.heightBox,
                    "A paragraph is a series of sentences that are organized and coherent, and are all related to a single topicTry to think about paragraphs in terms of thematic unity: a paragraph"
                        .text
                        .make()
                        .p16()
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
