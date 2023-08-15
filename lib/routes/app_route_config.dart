import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_website/pages/about_page.dart';
import 'package:portfolio_website/pages/not_found_page.dart';
import 'package:portfolio_website/pages/projects.dart';
import 'package:portfolio_website/pages/blogs.dart';
import 'package:portfolio_website/pages/home_page.dart';

class AppRoutes {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
      ),
      GoRoute(
        path: '/about',
        name: 'about',
        pageBuilder: (context, state) => const MaterialPage(child: AboutPage()),
      ),
      GoRoute(
        path: '/blogs',
        name: 'blogs',
        pageBuilder: (context, state) => const MaterialPage(child: BlogPage()),
      ),
      GoRoute(
        path: '/projects',
        name: 'projects',
        pageBuilder: (context, state) => const MaterialPage(child: Projects()),
      ),
    ],
    errorPageBuilder: (context, state) => const MaterialPage(child: NotFoundPage()),
  );
}
