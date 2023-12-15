import 'package:complete_flutter_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';
import 'doc_app.dart';

void main() {
  setupGetIt(); /// to get all dependencies injected in the app
  runApp(DocApp(appRouter: AppRouter()));
}
