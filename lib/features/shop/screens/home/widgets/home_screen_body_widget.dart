import 'package:ecommerce_app/common/widgets/custom_shapes/containers/header_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderContainer(
            widget: Container(),
          ),
        ],
      ),
    );
  }
}
