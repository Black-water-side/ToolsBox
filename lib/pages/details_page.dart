import 'package:flutter/material.dart';

/// [goodsId]
/// [DetailsPage]

class DetailsPage extends StatelessWidget {
  final String goodsId;

  const DetailsPage(this.goodsId, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('商品ID为：$goodsId');
  }
}
