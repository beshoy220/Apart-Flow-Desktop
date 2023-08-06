import 'package:apart_flow_desktop/data/local/providers/theme_settings.dart';
import 'package:apart_flow_desktop/presentation/widgets/common/title_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewProperty extends StatelessWidget {
  const ViewProperty({super.key});

  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);
    return WindowTitleBar(
      isLightTheme: !themeSettings.isDarkTheme,
      child: Scaffold(
        appBar: AppBar(),
        body: const Text(
            ' view property data. \n view link for clinties => https:\\\\apartflow.com/ap=239dk92kd922e'),
      ),
    );
  }
}
