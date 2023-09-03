import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/config/app_images.dart';
import 'package:fox_crypto_ui/config/app_text_style.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';

enum DocumentType {
  identifyCard,
  passport,
  driverLicense,
}

class DocumentItem extends StatefulWidget {
  final DocumentType type;
  final bool isSelected;
  final Function(bool) onItemClicked;

  const DocumentItem({
    super.key,
    required this.type,
    this.isSelected = false,
    required this.onItemClicked,
  });

  @override
  State<StatefulWidget> createState() {
    return _DocumentItem();
  }
}

class _DocumentItem extends State<DocumentItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        widget.onItemClicked(isSelected);
        setState(() {});
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(13.0),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.placeHolder,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              documentImagePath(widget.type),
              color: isSelected ? AppColors.primary : AppColors.placeHolder,
            ),
            const SizedBox(width: 8.0),
            Text(
              documentName(widget.type),
              style: TextStyle(
                  fontFamily: AppTextStyle.poppinsRegular,
                  fontSize: 15.0,
                  color:
                      isSelected ? AppColors.primary : AppColors.placeHolder),
            )
          ],
        ),
      ),
    );
  }

  String documentName(DocumentType type) {
    switch (type) {
      case DocumentType.identifyCard:
        return S.current.identify_card;
      case DocumentType.driverLicense:
        return S.current.driver_license;
      case DocumentType.passport:
        return S.current.passport;
    }
  }

  String documentImagePath(DocumentType type) {
    switch (type) {
      case DocumentType.identifyCard:
        return AppImages.icIdentityCard;
      case DocumentType.driverLicense:
        return AppImages.icDrivenLicense;
      case DocumentType.passport:
        return AppImages.icPassport;
    }
  }
}
