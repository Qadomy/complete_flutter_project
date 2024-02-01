import 'package:complete_flutter_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'doc_app.dart';

void main() async {
  // to get all dependencies injected in the app
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
