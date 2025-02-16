import 'package:flutter/material.dart';
import 'package:hendshake/services/locator_service.dart';
import 'package:hendshake/services/navigation_service.dart';
import 'package:hendshake/widgets/dialog_widget/info_dialog.dart';

class DialogService {
  static final GlobalKey<State> _dialogKey = GlobalKey<State>();

  static void closeDialog() {
    NavigationService.instance.pop();
  }

  static Future<void> showAnyDialog({required Widget dialog, bool? barrierDismissible}) async {
    final NavigationService navigationService = locator<NavigationService>();
    showDialog(
        context: navigationService.getCurrentContext(),
        barrierDismissible: barrierDismissible ?? true,
        builder: (BuildContext context) => dialog);
  }

  static Future<void> showCustomDialog({
    required String title,
    required String info,
    required String confirmText,
    String? cancelText,
    VoidCallback? cancelCallback,
    VoidCallback? confirmCallback,
    Color? confirmButtonColor,
    Color? cancelButtonColor,
    Widget? icon,
    IconData? confirmIcon,
    IconData? cancelIcon,
    bool? barrierDismissible,
  }) async {
    final NavigationService navigationService = locator<NavigationService>();

    showDialog(
      context: navigationService.getCurrentContext(),
      barrierDismissible: barrierDismissible ?? true,
      builder: (BuildContext context) => InfoDialog(
        title: title,
        info: info,
        key: _dialogKey,
        confirmText: confirmText,
        confirmCallback: confirmCallback,
        cancelText: cancelText,
        cancelButtonColor: cancelButtonColor,
        cancelCallback: cancelCallback,
        icon: icon,
        confirmIcon: confirmIcon,
        cancelIcon: cancelIcon,
        navigationService: navigationService,
      ),
    );
  }
}
