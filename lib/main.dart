import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starbucks_clone_app/core/utility/localization/localization_util.dart';
import 'package:starbucks_clone_app/model/theme/theme_model.dart';

import 'core/init/language/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: LocalizationLocals.init.supportedLocales,
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: LocalizationLocals.init.rawValue,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeModel()),
        ],
        child: MyApp(),
      )));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeModel>(context).getThemeData,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.hello.tr()),
        ),
        body: Center(
          child: Container(
            child: Text(
              'Hello World',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
      ),
    );
  }
}
