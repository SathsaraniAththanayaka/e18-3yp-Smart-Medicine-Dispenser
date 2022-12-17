import 'package:flutter/material.dart';
import '../config.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    Key? key,
    @required this.path,
    @required this.semanticsLabel,
  }) :super(key: key);

  final String? path, semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 4, 
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.02),
          child: Image.asset(path!,
          semanticLabel: semanticsLabel!,),
        ));
  }
}