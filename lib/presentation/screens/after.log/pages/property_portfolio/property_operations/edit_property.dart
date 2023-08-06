import 'package:apart_flow_desktop/presentation/widgets/common/title_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../../data/local/providers/theme_settings.dart';

class EditProperty extends StatelessWidget {
  const EditProperty({super.key});

  @override
  Widget build(BuildContext context) {
    final themeSettings = Provider.of<ThemeSettings>(context);

    return WindowTitleBar(
      isLightTheme: !themeSettings.isDarkTheme,
      child: Scaffold(
        appBar: AppBar(),
        body: const Text('edit p.'),
      ),
    );
  }
}
