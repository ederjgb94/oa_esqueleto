import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

topbar() {
  return AppBar(
    elevation: 0,
    toolbarHeight: 100,
    backgroundColor: Colors.white,
    centerTitle: false,
    automaticallyImplyLeading: false,
    titleSpacing: 0,
    title: Padding(
      padding: const EdgeInsets.only(left: 150, right: 150),
      child: Row(
        children: [
          SvgPicture.asset(
            'images/uat_logo.svg',
            height: 80,
            width: 80,
          ),
          const Expanded(
            child: Text('Aprende UAT',
                style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 3,
                    wordSpacing: 5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff00426A)),
                textAlign: TextAlign.center),
          ),
          IconButton(
            icon: Icon(
              Icons.article,
              color: Colors.grey.shade600,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 5),
          IconButton(
            icon: Icon(
              Icons.credit_card,
              color: Colors.grey.shade600,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 5),
          IconButton(
            icon: Icon(
              Icons.developer_board,
              color: Colors.grey.shade600,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 20),
          RawMaterialButton(
            fillColor: const Color(0xff61B0CC),
            elevation: 0,
            constraints: const BoxConstraints(minWidth: 40),
            padding: const EdgeInsets.symmetric(vertical: 10),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
    ),
  );
}
