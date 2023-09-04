import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/screens/account_verification/widgets/document_item.dart';

class DocumentOption extends StatefulWidget {
  final Function(DocumentType) onDocumentSelected;
  const DocumentOption({
    super.key,
    required this.onDocumentSelected,
  });

  @override
  State<StatefulWidget> createState() {
    return _DocumentItem();
  }
}

class _DocumentItem extends State<DocumentOption> {
  DocumentType? currentOption;
  List<DocumentState> options = [
    DocumentState(type: DocumentType.identifyCard, isSelected: false),
    DocumentState(type: DocumentType.passport, isSelected: false),
    DocumentState(type: DocumentType.driverLicense, isSelected: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ...options
            .map(
              (e) => DocumentItem(
                documentState: e,
                onItemClicked: () {
                  for (var element in options) {
                    element.isSelected = false;
                  }
                  e.isSelected = true;
                  setState(() {});
                },
              ),
            )
            .toList()
      ],
    );
  }
}

class DocumentState {
  final DocumentType type;
  bool isSelected;

  DocumentState({
    required this.type,
    required this.isSelected,
  });
}
