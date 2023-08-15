import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_website/pages/about/about_page.dart';
import 'package:portfolio_website/pages/not_found_page.dart';
import 'package:portfolio_website/pages/projects/projects.dart';
import 'package:portfolio_website/pages/blogs/blogs.dart';
import 'package:portfolio_website/pages/home/home_page.dart';
import 'package:portfolio_website/routes/app_routes.dart';

class AppRoutes {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: Routes.homeRoute,
        pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
      ),
      GoRoute(
        path: '/about',
        name: Routes.aboutRoute,
        pageBuilder: (context, state) => const MaterialPage(child: AboutPage()),
      ),
      GoRoute(
        path: '/blogs',
        name: Routes.blogsRoute,
        pageBuilder: (context, state) => const MaterialPage(child: BlogPage()),
      ),
      GoRoute(
        path: '/projects',
        name: Routes.projectsRoute,
        pageBuilder: (context, state) => const MaterialPage(child: Projects()),
      ),
    ],
    errorPageBuilder: (context, state) => const MaterialPage(child: NotFoundPage()),
  );
}
