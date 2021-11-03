import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';
import '../../../generated/l10n.dart';
import '../../common/widget/common_icon_button.dart';
import '../../common/widget/common_text_form_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        leading: CommonIconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          color: AppColors.black,
        ),
        title: CommonTextFormField(
          hintText: S.current.search,
          focusedBorderColor: AppColors.transparent,
          enableBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
