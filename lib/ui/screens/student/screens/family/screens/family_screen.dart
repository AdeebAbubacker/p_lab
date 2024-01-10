import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/ui/screens/student/screens/family/screens/family_layout.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/card/family_card.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/card/siblings_card.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/do_you_have_siblings.dart';
import 'package:panakj_app/ui/view_model/family/family_bloc.dart';

class FamilyScreen extends StatelessWidget {
  TextEditingController fathernameController = TextEditingController();
  TextEditingController fatherincomeController = TextEditingController();
  TextEditingController mothernameController = TextEditingController();
  TextEditingController motherincomeController = TextEditingController();
  TextEditingController guardianameController = TextEditingController();
  TextEditingController guardiaincomeController = TextEditingController();
  FocusNode realtionfocusNode;
  FocusNode siblingnamefocusNode;
  FocusNode fathericomefocusnode;
  FocusNode mothericomefocusnode;
  FocusNode guardianicomefocusnode;
  FocusNode fatherfocusNode;
  FocusNode motherfocusNode;
  FocusNode guardianfocusNode;

  ///------------------ siblings card ----------------------------
  TextEditingController siblingnameController1;
   TextEditingController siblingnameController2;
    TextEditingController siblingnameController3;
   TextEditingController siblingnameController4;
   TextEditingController siblingnameController5;

  FamilyScreen({
    super.key,
    required this.fathernameController,
    required this.fatherincomeController,
    required this.fathericomefocusnode,
    required this.mothernameController,
    required this.mothericomefocusnode,
    required this.guardianicomefocusnode,
    required this.realtionfocusNode,
    required this.fatherfocusNode,
    required this.motherfocusNode,
    required this.guardianfocusNode,
    required this.siblingnamefocusNode,
    required this.guardianameController,
    required this.motherincomeController,
    required this.guardiaincomeController,
    required this.siblingnameController1,
    required this.siblingnameController2,
        required this.siblingnameController3,
    required this.siblingnameController4,
     required this.siblingnameController5,
      ///------------------ siblings card ----------------------------
      
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FamilyBloc, FamilyState>(
      builder: (context, state) {
        return Column(
          children: [
            FamilyLayout(
              familyLayoutheight: 1460,
              title: 'Family Details',
              familyDetailsCard: FamilyCard(
                fathernameController: fathernameController,
                fathericomefocusnode: fathericomefocusnode,
                mothernameController: mothernameController,
                mothericomefocusnode: mothericomefocusnode,
                guardianameController: guardianameController,
                guardianicomefocusnode: guardianicomefocusnode,
                realtionfocusNode: realtionfocusNode,
                fatherfocusNode: fatherfocusNode,
                motherfocusNode: motherfocusNode,
                guardianfocusNode: guardianfocusNode,
                mybool: false,
                siblings: DoYouHaveSiblings(),
                fatherincomeController: fatherincomeController,
                motherincomeController: motherincomeController,
                guardiaincomeController: guardiaincomeController,
              ),
            ),
            state.siblings
                ? Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: FamilyLayout(
                      familyLayoutheight: 593 +
                          (state.numberOfSiblings > 0
                              ? (state.numberOfSiblings) * 545
                              : 0),
                      title: 'Siblings Details',
                      familyDetailsCard: SiblingsCard(
                        siblingnameController1: siblingnameController1,
                        siblingnameController2: siblingnameController2,
                        siblingnameController3: siblingnameController3,
                        siblingnameController4: siblingnameController4,
                        siblingnameController5: siblingnameController5,
                        
                        mybool: false,
                        siblingnamefocusNode: siblingnamefocusNode,
                      ),
                    ),
                  )
                : const Text(''),
          ],
        );
      },
    );
  }
}
