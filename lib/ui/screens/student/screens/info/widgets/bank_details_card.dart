import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/db/adapters/bank_adapter/bank_adapter.dart';
import 'package:panakj_app/ui/screens/student/screens/info/widgets/bank_bottomsheet.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_inputText.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';
import 'package:hive/hive.dart';

class BankCard extends StatefulWidget {
  bool mybool;
  final width;
  FocusNode banknamefocusnode;
  FocusNode accnofocusnode;
  FocusNode bankifscfocusnode;
  TextEditingController nameController = TextEditingController();
  TextEditingController accNoController = TextEditingController();
  TextEditingController ifscController = TextEditingController();

  BankCard({
    super.key,
    this.width,
    required this.mybool,
    required this.banknamefocusnode,
    required this.accnofocusnode,
    required this.bankifscfocusnode,
    required this.nameController,
    required this.accNoController,
    required this.ifscController,
  });

  @override
  _BankCardState createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  late Box<BankDB> bankBox;
  List<String> bankNames = [];
  @override
  void initState() {
    super.initState();
    setupBankBox();
  }

  Future<void> setupBankBox() async {
    bankBox = await Hive.openBox<BankDB>('bankBox');

    if (!bankBox.isOpen) {
      return;
    }

    List<int> keys = bankBox.keys.cast<int>().toList();

    if (keys.isEmpty) {
      return;
    }

    // Extract names from BankDB objects
    bankNames = keys.map((key) {
      BankDB bank = bankBox.get(key)!;
      return bank.name;
    }).toList();

    // Ensure that the widget is rebuilt after the bankNames are populated
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelInputText(
            focusNode: widget.banknamefocusnode,
            label: 'Full name (As per bank record)',
            StringInput: widget.nameController,
          ),
          const HeightSpacer(height: 14),
          LabelInputText(
            focusNode: widget.accnofocusnode,
            label: 'Account Number',
            StringInput: widget.accNoController,
          ),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Bank Name'),
          BankBottomSheet(
            title: 'ssss',
            hintText: '',
          ),
          const HeightSpacer(height: 14),
          LabelInputText(
            focusNode: widget.bankifscfocusnode,
            label: 'Branch IFSC',
            StringInput: widget.ifscController,
          ),
          const HeightSpacer(height: 14),
        ],
      ),
    );
  }
}
