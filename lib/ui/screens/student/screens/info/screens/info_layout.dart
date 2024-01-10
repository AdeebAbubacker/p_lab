import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/screens/info/screens/bank_layout.dart';
import 'package:panakj_app/ui/screens/student/screens/info/widgets/bank_details_card.dart';
import 'package:panakj_app/ui/screens/student/screens/info/widgets/personal_details_card.dart';
import 'package:panakj_app/ui/screens/student/widgets/myPadding.dart';
import 'package:panakj_app/ui/view_model/students_app_form/students_app_form_bloc.dart';

class InfoLayout extends StatefulWidget {
  TextEditingController nameController = TextEditingController();
  FocusNode infonamefocusNode;
  FocusNode infoaddressfocusNode;
  FocusNode numericalfocusnode;
  FocusNode emailfocusnode;
  FocusNode banknamefocusnode;
  FocusNode accnofocusnode;
  FocusNode bankifscfocusnode;
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameatBankController = TextEditingController();
  TextEditingController accNoController = TextEditingController();
  TextEditingController ifscController = TextEditingController();
  final String title;

  InfoLayout({
    super.key,
    required this.title,
    required this.nameController,
    required this.numericalfocusnode,
    required this.infonamefocusNode,
    required this.infoaddressfocusNode,
    required this.emailfocusnode,
    required this.banknamefocusnode,
    required this.accnofocusnode,
    required this.bankifscfocusnode,
    required this.addressController,
    required this.emailController,
    required this.phoneNoController,
    required this.nameatBankController,
    required this.accNoController,
    required this.ifscController,
  });
  // ignore: prefer_typing_uninitialized_variables

  @override
  State<InfoLayout> createState() => _InfoLayoutState();
}

class _InfoLayoutState extends State<InfoLayout> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: BlocBuilder<StudentsAppFormBloc, StudentsAppFormState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                        offset: Offset(5, 8),
                        blurRadius: 15,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  width: deviceWidth * 0.95,
                  height: state.forBankAccountholder ? 1200 : 795,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          widget.title,
                          style: kCardFilterTextStyle,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: deviceWidth * 0.95,
                        color: khorizontlinecolor,
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      MyPadding(
                        widget: PersonalDetailsCard(
                          emailfocusnode: widget.emailfocusnode,
                          numericalfocusnode: widget.numericalfocusnode,
                          mybool: false,
                          nameController: widget.nameController,
                          infonamefocusNode: widget.infonamefocusNode,
                          addressfocusNode: widget.infoaddressfocusNode,
                          addressController: widget.addressController,
                          phoneNoController: widget.phoneNoController,
                          emailController: widget.emailController,
                        ),
                      ),
                      MyPadding(
                        paddingTop: 10,
                        widget: Text(
                          state.forBankAccountholder ? 'Bank Details' : '',
                          style: kCardFilterTextStyle,
                        ),
                      ),
                      state.forBankAccountholder
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: BankMainLayout(
                                  cardData: BankCard(
                                    banknamefocusnode: widget.banknamefocusnode,
                                    accnofocusnode: widget.accnofocusnode,
                                    bankifscfocusnode: widget.bankifscfocusnode,
                                    mybool: state.forNoAccountUsers,
                                    accNoController: widget.accNoController,
                                    nameController: widget.nameatBankController,
                                    ifscController: widget.ifscController,
                                  ),
                                  row: const Text('')),
                            )
                          : const Text(''),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
