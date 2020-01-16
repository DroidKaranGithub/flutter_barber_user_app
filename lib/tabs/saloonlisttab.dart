import 'package:flutter/material.dart';

class SaloonListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SaloonListFrag();
  }
}


class SaloonListFrag extends StatefulWidget {
  @override
  _SaloonListFragState createState() => _SaloonListFragState();
}

class _SaloonListFragState extends State<SaloonListFrag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
    );
  }
}