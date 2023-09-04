import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
import 'package:fox_crypto_ui/screens/account_verification/widgets/document_option.dart';
import 'package:fox_crypto_ui/shared_view/common_app_bar.dart';
import 'package:fox_crypto_ui/shared_view/common_button.dart';
import 'package:fox_crypto_ui/shared_view/common_checkbox.dart';

class AccountVerificationPage extends StatefulWidget {
  const AccountVerificationPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AccountVerificationPage();
  }
}

class _AccountVerificationPage extends State<AccountVerificationPage> {
  List<String> countries = [];
  @override
  Future<void> initState() async {
    super.initState();
    final String response =
        await rootBundle.loadString('assets/country_data.json');
    await json.decode(response).then(
      (data) {
        for (var element in data) {
          countries.add(element["countryName"]);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(
          title: S.current.verify_account,
          onBack: () {
            Navigator.pop(context);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 26.0),
              Text(
                S.current.select_country_of_resident,
                style: const TextStyle(
                    fontFamily: AppTextStyle.poppinsSemiBold,
                    fontSize: 17.0,
                    color: Colors.white),
              ),
              const SizedBox(height: 22.0),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: AppColors.hintTextColor),
                    borderRadius: BorderRadius.circular(13.0),
                    shape: BoxShape.rectangle),
                child: DropdownButton(
                  underline: const SizedBox(),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  items: countries.map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: AppTextStyle.poppinsRegular,
                            fontSize: 17.0,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {},
                  hint: Text(
                    S.current.select_country,
                    style: const TextStyle(
                      color: AppColors.hintTextColor,
                      fontFamily: AppTextStyle.poppinsRegular,
                      fontSize: 17.0,
                    ),
                  ),
                  isExpanded: true,
                ),
              ),
              const SizedBox(height: 36.0),
              Text(
                S.current.select_valid_government,
                style: const TextStyle(
                    fontFamily: AppTextStyle.poppinsSemiBold,
                    fontSize: 17.0,
                    color: Colors.white),
              ),
              const SizedBox(height: 22.0),
              DocumentOption(onDocumentSelected: (type) {}),
              const Spacer(),
              CommonCheckbox(
                content: Text(
                  S.current.verify_account_checkbox,
                  style: const TextStyle(
                    fontFamily: AppTextStyle.poppinsRegular,
                    fontSize: 13.0,
                    color: AppColors.placeHolder,
                  ),
                ),
                onPressed: (value) {},
              ),
              const SizedBox(height: 22.0),
              CommonButton(
                label: S.current.continue_action,
                onAction: () {},
              ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
