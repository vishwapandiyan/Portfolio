import 'package:flutter/material.dart';
import 'package:portfolio_web/common/blog.dart';
import 'package:portfolio_web/web/about_web.dart';
import 'package:portfolio_web/web/landing_page_web.dart';
import 'package:portfolio_web/web/works_web.dart';
import 'web/contact_web.dart';

/// The class responsible for generating routes based on the provided route settings.
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LandingPageWeb(),
        );
      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ContactWeb(),
        );
      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AboutWeb(),
        );
      case '/blog':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const Blog(),
        );
      case '/works':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const WorksWeb(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LandingPageWeb(),
        );
    }
  }
}
