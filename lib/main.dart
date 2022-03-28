import 'package:flutter/material.dart';
import 'package:flutter_section9/screens/Hero/home_hero.dart';
import 'package:flutter_section9/screens/clip_path_rrect_oval.dart';
import 'package:flutter_section9/screens/custom_painter.dart';
import 'package:flutter_section9/screens/fade_in_image.dart';
import 'package:flutter_section9/screens/fade_transition.dart';
import 'package:flutter_section9/screens/fitted_box.dart';
import 'package:flutter_section9/screens/floating_action_button.dart';
import 'package:flutter_section9/screens/future_builderr.dart';
import 'package:flutter_section9/screens/animated_container.dart';
import 'package:flutter_section9/screens/Hero/details_hero.dart';
import 'package:flutter_section9/screens/inherited_widget.dart';
import 'package:flutter_section9/screens/layout_builder.dart';
import 'package:flutter_section9/screens/opacity_animated.dart';
import 'package:flutter_section9/screens/page_view.dart';
import 'package:flutter_section9/screens/silver_appbar.dart';
import 'package:flutter_section9/screens/silverlist_silvergrid.dart';
import 'package:flutter_section9/screens/stream_builder.dart';
import 'package:flutter_section9/screens/table.dart';
import 'package:flutter_section9/screens/tool_tip.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'layout_builder',
      routes: {
        'animated_container': (_) => const AnimatedContainerScreen(),
        'opacity_container': (_) => const OpacityScreen(),
        'future_builder': (_) => const FutureBuilderScreen(),
        'fade_transition': (_) => const FadeTransitionScreen(),
        'floating_action_button': (_) => const FloatingActionButtonScreen(),
        'page_view': (_) => const PageViewScreen(),
        'table': (_) => const TableScreen(),
        'silver_appbar': (_) => const SilverAppBarScreen(),
        'silverlist_silvergrid': (_) => const SilverGridListScreen(),
        'fade_in_image': (_) => const FadeInImageScreen(),
        'stream_builder': (_) => const StreamBuilderScreen(),
        'inherited_widget': (_) => const InheritedScreen(),
        'clip': (_) => const ClipScreen(),
        'hero_home': (_) => const HomeHeroScreen(),
        'hero_details': (_) => const DetailsHeroScreen(),
        'custom_painter': (_) => const CustomPainterScreen(),
        'tool_tip': (_) => const ToolTipScreen(),
        'fitted_box': (_) => const FittedBoxScreen(),
        'layout_builder': (_) => const LayoutBuilderScreen()
      },
    );
  }
}
