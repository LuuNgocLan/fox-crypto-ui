import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
import 'package:fox_crypto_ui/routes/routes.dart';
import 'package:fox_crypto_ui/shared_view/common_app_bar.dart';
import 'package:fox_crypto_ui/shared_view/common_button.dart';
import 'package:fox_crypto_ui/shared_view/common_checkbox.dart';

enum CameraFace {
  front,
  back,
}

class UploadDocumentPage extends StatefulWidget {
  const UploadDocumentPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UploadDocumentPage();
  }
}

class _UploadDocumentPage extends State<UploadDocumentPage> {
  List<Rule> rules = [
    Rule(imagePath: AppImages.icCheck, content: S.current.goverment_issued),
    Rule(
        imagePath: AppImages.icCheck,
        content: S.current.original_full_size_unedited_document),
    Rule(
        imagePath: AppImages.icCheck,
        content:
            S.current.place_documents_against_a_single_coloured_background),
    Rule(
        imagePath: AppImages.icCheck,
        content: S.current.readable_well_lit_coloured_images),
    Rule(
        imagePath: AppImages.icWrong,
        content: S.current.no_black_and_white_images),
    Rule(
        imagePath: AppImages.icWrong,
        content: S.current.no_edited_or_expired_documents),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(
          title: S.current.verify_account,
          onBack: () {
            Navigator.pop(context);
          },
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: double.infinity,
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 180.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 26.0),
                    Text(S.current.upload_image_of_id_card,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Colors.white)),
                    const SizedBox(height: 22.0),
                    _cameraFace(CameraFace.front),
                    const SizedBox(height: 22.0),
                    _cameraFace(CameraFace.back),
                    const SizedBox(height: 30.0),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        ...rules
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(e.imagePath),
                                      const SizedBox(width: 8.0),
                                      Expanded(
                                        child: Text(
                                          e.content,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                color: AppColors.placeHolder,
                                              ),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            _buildBottomArea(),
          ],
        ),
      ),
    );
  }

  Container _buildBottomArea() {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonCheckbox(
            content: Text(
              S.current.verify_account_checkbox,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.placeHolder,
                  ),
            ),
            onPressed: (value) {},
          ),
          const SizedBox(height: 22.0),
          CommonButton(
            label: S.current.continue_action,
            onAction: () {
              Navigator.pushNamed(context, Routes.accountVerifyStep3);
            },
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }

  Widget _cameraFace(CameraFace type) {
    return Container(
      width: double.infinity,
      height: 133.0,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.icCamera),
            const SizedBox(height: 8.0),
            Text(
              type == CameraFace.front
                  ? S.current.upload_front_page
                  : S.current.upload_back_page,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.placeHolder,
                  ),
            )
          ],
        ),
      ),
    );
  }
}

class Rule {
  final String imagePath;
  final String content;
  Rule({required this.imagePath, required this.content});
}
