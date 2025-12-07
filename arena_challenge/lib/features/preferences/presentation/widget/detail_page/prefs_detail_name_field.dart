import 'package:flutter/material.dart';

import '../../../utils/preferences_utils.dart';

class PrefsDetailNameField extends StatelessWidget {
  const PrefsDetailNameField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
        labelText: PrefsDetailUtils.nameLabel,
        hintText: PrefsDetailUtils.nameHint,
        border: OutlineInputBorder(),
      ),
    );
  }
}
