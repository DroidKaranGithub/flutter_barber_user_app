import 'package:flutter/material.dart';

class OffersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OffersFrag();
  }
}


class OffersFrag extends StatefulWidget {
  @override
  _OffersFragState createState() => _OffersFragState();
}

class _OffersFragState extends State<OffersFrag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}