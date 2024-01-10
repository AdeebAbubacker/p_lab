import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/db/adapters/family_success_status/family_status_adapter.dart';
import 'package:panakj_app/core/db/adapters/personal_info_adapter/personal_info_adapter.dart';
import 'package:panakj_app/core/db/adapters/validation_academics/validation_academicadapter.dart';
import 'package:panakj_app/core/db/adapters/validation_familyscreen/validation_familyscreenadapter.dart';
import 'package:panakj_app/core/db/adapters/validation_personalinfo/validation_personalinfoadapter.dart';
import 'package:panakj_app/core/db/adapters/validation_residential/validation_residentialadapter.dart';
import 'package:panakj_app/core/db/boxes/family_status_box.dart';
import 'package:panakj_app/core/db/boxes/validation_academicBox.dart';
import 'package:panakj_app/core/db/boxes/validation_familyBox.dart';
import 'package:panakj_app/core/db/boxes/validation_personalinfoBox.dart';
import 'package:panakj_app/core/db/boxes/validation_residentialBox.dart';
import 'package:panakj_app/core/model/sibling_data/sibling_data.dart';
import 'package:panakj_app/package/presentation/custom_stepper.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/screens/academics_screen.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/screens/achievments_screen.dart';
import 'package:panakj_app/ui/screens/student/screens/family/screens/family_screen.dart';
import 'package:panakj_app/ui/screens/student/screens/home/screens/home_screen.dart';
import 'package:panakj_app/ui/screens/student/screens/info/screens/info_layout.dart';
import 'package:panakj_app/ui/screens/student/widgets/bottom_card.dart';
import 'package:panakj_app/ui/screens/student/widgets/next_and_previous_button.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';
import 'package:panakj_app/ui/view_model/Dob/dob_bloc.dart';
import 'package:panakj_app/ui/view_model/acadmicdetails/academic_bloc.dart';
import 'package:panakj_app/ui/view_model/checkboxfirst/checkboxfirst_bloc.dart';
import 'package:panakj_app/ui/view_model/checkboxsec/checkboxsec_bloc.dart';
import 'package:panakj_app/ui/view_model/checkboxthird/checkboxthird_bloc.dart';
import 'package:panakj_app/ui/view_model/family/family_bloc.dart';
import 'package:panakj_app/ui/view_model/familyInfo/family_info_bloc.dart';
import 'package:panakj_app/ui/view_model/horizontal_radio_btn/horizontal_radio_btn_bloc.dart';
import 'package:panakj_app/ui/view_model/personalInfo/personal_info_bloc.dart';
import 'package:panakj_app/ui/view_model/post_residentail_data/post_residentail_data_bloc.dart';
import 'package:panakj_app/ui/view_model/question1_res/question1_res_bloc.dart';
import 'package:panakj_app/ui/view_model/question2_res/question2_res_bloc.dart';
import 'package:panakj_app/ui/view_model/question3_res/question3_res_bloc.dart';
import 'package:panakj_app/ui/view_model/selctedbank/selctedbank_bloc.dart';
import 'package:panakj_app/ui/view_model/selected_school/selected_school_bloc.dart';
import 'package:panakj_app/ui/view_model/students_app_form/students_app_form_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class StudentsApplicationForm extends StatefulWidget {
  const StudentsApplicationForm({super.key});

  @override
  State<StudentsApplicationForm> createState() =>
      _StudentsApplicationFormState();
}

class _StudentsApplicationFormState extends State<StudentsApplicationForm> {
  late Box<personalInfoDB> personalInfoBox;
  late Box<ValidationPersonalInfoScreenDB> validationPersonalInfoBox;
  late Box<ValidationFamilyScreenDB> validationFamilyBox;
  late Box<ValidationAcademicScreenDB> validationAcademicBox;
  late Box<ValidationResidentailScreenDB> validationResidentailBox;

  @override
  void initState() {
    super.initState();

    personalInfo();
    validationOfScreens();
  }

  void personalInfo() async {
    personalInfoBox = await Hive.openBox<personalInfoDB>('personalInfoBox');
    setState(() {});
  }

  void validationOfScreens() async {
    validationPersonalInfoBox =
        await Hive.openBox<ValidationPersonalInfoScreenDB>(
            'validationPersonalInfoBox');
    validationFamilyBox =
        await Hive.openBox<ValidationFamilyScreenDB>('validationFamilyBox');
    validationAcademicBox =
        await Hive.openBox<ValidationAcademicScreenDB>('validationAcademicBox');
    validationResidentailBox =
        await Hive.openBox<ValidationResidentailScreenDB>(
            'validationResidentailBox');

    setState(() {});
  }

  ScrollController scrollController = ScrollController();

  // 1st Section
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController nameatBankController = TextEditingController();
  TextEditingController accNoController = TextEditingController();
  TextEditingController ifscController = TextEditingController();

  //2nd Section
  TextEditingController fathernameController = TextEditingController();
  TextEditingController fatherincomeController = TextEditingController();
  TextEditingController mothernameController = TextEditingController();
  TextEditingController motherincomeController = TextEditingController();
  TextEditingController guardianameController = TextEditingController();
  TextEditingController guardiaincomeController = TextEditingController();
  TextEditingController siblingnameController1 = TextEditingController();
  TextEditingController siblingnameController2 = TextEditingController();
  TextEditingController siblingnameController3 = TextEditingController();
  TextEditingController siblingnameController4 = TextEditingController();
  TextEditingController siblingnameController5 = TextEditingController();

  //3rd Section
  TextEditingController examregcontroller = TextEditingController();
  TextEditingController sslcmarksController = TextEditingController();
  TextEditingController plusoneMarksController = TextEditingController();
  TextEditingController plustwoMarksController = TextEditingController();

  // 4th section
  TextEditingController landcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FocusNode focuscontroller1 = FocusNode();
    FocusNode focuscontroller2 = FocusNode();
    FocusNode focuscontroller3 = FocusNode();
    FocusNode focuscontroller4 = FocusNode();
    FocusNode focuscontroller5 = FocusNode();
    FocusNode focuscontroller6 = FocusNode();
    FocusNode focuscontroller7 = FocusNode();
    FocusNode focuscontroller8 = FocusNode();
    DateTime selectedDate = context.read<DobBloc>().state.selectedDate;
    return Scaffold(
      body: BlocBuilder<StudentsAppFormBloc, StudentsAppFormState>(
        builder: (context, state) {
          void handleNextPage(int step) {
            context
                .read<StudentsAppFormBloc>()
                .add(DoYouHaveBankAccEvent(currentStep: step));
          }

          void handlePrevious(int step) {
            context
                .read<StudentsAppFormBloc>()
                .add(DoYouHaveBankAccEvent(currentStep: step));
          }

          List<FocusNode> focusControllers = [
            focuscontroller1,
            focuscontroller2,
            focuscontroller3,
            focuscontroller4,
            focuscontroller5,
            focuscontroller6,
            focuscontroller7,
            focuscontroller8,
          ];

          return GestureDetector(
            onTap: () {
              for (var focusController in focusControllers) {
                if (focusController.hasFocus) {
                  focusController.unfocus();
                }
              }
            },
            child: CustomStepper(
              currentPage: state.currentStep,
              scrollController: scrollController,
              steps: [
                AddStep(
                  status: validationPersonalInfoBox.get('key')?.status == 2
                      ? 'completed'
                      : validationPersonalInfoBox.get('key')?.status == 1
                          ? 'In progress'
                          : validationPersonalInfoBox.get('key')?.status == 0
                              ? 'Todo'
                              : ' todo',
                  // status: validationPersonalInfoBox.get('key')?.status == 0
                  //     ? 'Todo'
                  //     : validationPersonalInfoBox.get('key')?.status == 1
                  //         ? 'In Progress'
                  //         : validationPersonalInfoBox.get('key')?.status == 2
                  //             ? 'completed'
                  //             : 'In Progress',

                  stepIcon: Icons.school_rounded,
                  title: 'Info',
                  content: Padding(
                    padding: EdgeInsets.zero,
                    child: Column(
                      children: <Widget>[
                        InfoLayout(
                          title: 'Personal Info',
                          nameController: nameController,
                          addressController: addressController,
                          emailController: emailController,
                          phoneNoController: phoneNoController,
                          nameatBankController: nameatBankController,
                          accNoController: accNoController,
                          ifscController: ifscController,
                          infonamefocusNode: focuscontroller1,
                          infoaddressfocusNode: focuscontroller2,
                          numericalfocusnode: focuscontroller3,
                          emailfocusnode: focuscontroller4,
                          banknamefocusnode: focuscontroller5,
                          accnofocusnode: focuscontroller6,
                          bankifscfocusnode: focuscontroller7,
                        ),
                        const HeightSpacer(),
                        BlocConsumer<PersonalInfoBloc, PersonalInfoState>(
                          listener: (context, state) {
                            state.successorFailure.fold(
                              () {},
                              (either) {
                                either.fold(
                                  (failure) async {
                                    // ignore: avoid_print
                                    print(failure.toString());
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(failure.toString())));
                                    setState(() {
                                      validationPersonalInfoBox.put(
                                        'key',
                                        ValidationPersonalInfoScreenDB(
                                            status: 1),
                                      );
                                    });
                                  },
                                  (success) async {
                                    setState(() {
                                      validationPersonalInfoBox.put(
                                        'key',
                                        ValidationPersonalInfoScreenDB(
                                            status: 2),
                                      );
                                    });

                                    personalInfoBox.put(
                                      'key',
                                      personalInfoDB(
                                        name: nameController.text,
                                        gender: true,
                                        dob: selectedDate,
                                        address: addressController.text,
                                        mobno: phoneNoController.text,
                                        email: emailController.text,
                                        doyouHaveBankAcc: true,
                                        nameasPerBank:
                                            nameatBankController.text,
                                        AccNumber: accNoController.text,
                                        bankName: "Federal Bank",
                                        BranchIFSC: ifscController.text,
                                      ),
                                    );

                                    for (var data in personalInfoBox.values) {
                                      print(
                                          'data from personal info box: $data');
                                      print('name from db: ${data.name}');
                                      print('gender from db: ${data.gender}');
                                      print('dob from db: ${data.dob}');
                                      print('address from db: ${data.address}');
                                      print('mobno from db: ${data.mobno}');
                                      print('email from db: ${data.email}');
                                      print(
                                          'do you have from db: ${data.doyouHaveBankAcc}');
                                      print(
                                          'name as per bank from db: ${data.nameasPerBank}');
                                      print(
                                          'acc number from db: ${data.AccNumber}');
                                      print(
                                          'bank Name from db: ${data.bankName}');
                                      print(
                                          'Branch IFSC from db: ${data.BranchIFSC}');
                                    }
                                    print(success.data.toString());
                                    scrollController.jumpTo(0.0);
                                    handleNextPage(1);
                                  },
                                );
                              },
                            );
                          },
                          builder: (context, state) {
                            return BottomCard(
                              nextBtn: InkResponse(
                                onTap: () {
                                  BlocProvider.of<PersonalInfoBloc>(context)
                                      .add(
                                    PostPersonalInfo(
                                      name: nameController.text,
                                      gender: context
                                                  .read<
                                                      HorizontalRadioBtnBloc>()
                                                  .state
                                                  .groupValue ==
                                              1
                                          ? "m"
                                          : "f",
                                      dob: DateFormat('yyyy-MM-dd').format(
                                          context
                                              .read<DobBloc>()
                                              .state
                                              .selectedDate),
                                      phone: phoneNoController.text,
                                      address: addressController.text,
                                      email: emailController.text,
                                      bankaccname: nameatBankController.text,
                                      bankaccno: accNoController.text,
                                      bankid: context
                                          .read<SelctedbankBloc>()
                                          .state
                                          .selectedBank,
                                      bankifsc: ifscController.text,
                                    ),
                                  );
                                },
                                child: const StepperBtn(
                                  nextorprev: 'Next',
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                AddStep(
                  status: validationFamilyBox.get('key')?.status == 1
                      ? 'Todo'
                      : validationFamilyBox.get('key')?.status == 2
                          ? 'completed'
                          : validationPersonalInfoBox.get('key')?.status == 2
                              ? 'In Progress'
                              : 'Todo',
                  title: 'Family',
                  content: Column(
                    children: [
                      FamilyScreen(
                        fathernameController: fathernameController,
                        realtionfocusNode: focuscontroller1,
                        fatherfocusNode: focuscontroller2,
                        motherfocusNode: focuscontroller3,
                        guardianfocusNode: focuscontroller4,
                        fathericomefocusnode: focuscontroller5,
                        mothernameController: mothernameController,
                        mothericomefocusnode: focuscontroller6,
                        guardianicomefocusnode: focuscontroller7,
                        siblingnamefocusNode: focuscontroller8,
                        fatherincomeController: fatherincomeController,
                        motherincomeController: motherincomeController,
                        guardianameController: guardianameController,
                        guardiaincomeController: guardiaincomeController,
                        siblingnameController1: siblingnameController1,
                        siblingnameController2: siblingnameController2,
                        siblingnameController3: siblingnameController3,
                        siblingnameController4: siblingnameController4,
                        siblingnameController5: siblingnameController5,
                      ),
                      const HeightSpacer(),
                      BlocConsumer<FamilyInfoBloc, FamilyInfoState>(
                        listener: (context, state) {
                          state.successorFailure.fold(
                            () {},
                            (either) {
                              either.fold(
                                (failure) async {
                                  setState(() {
                                    validationFamilyBox.put(
                                      'key',
                                      ValidationFamilyScreenDB(status: 1),
                                    );
                                  });

                                  // ignore: avoid_print
                                  print(failure.toString());
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'the failure msg is ------------  ${failure.toString()}')));
                                },
                                (success) async {
                                  setState(() {
                                    validationFamilyBox.put(
                                      'key',
                                      ValidationFamilyScreenDB(status: 2),
                                    );
                                  });

                                  // ignore: avoid_print
                                  // familystatusInfoBox.put(
                                  //   'key',
                                  //   FamilyStatusDB(id: familysuccescount),
                                  // );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'the success msg is ------------ ${success.toString()}')));
                                  print(
                                      'Family Status ID: ${familystatusInfoBox.get('key')?.id}');
                                  print(success.data.toString());
                                  scrollController.jumpTo(0.0);
                                  handleNextPage(2);
                                },
                              );
                            },
                          );
                        },
                        builder: (context, state) {
                          return BottomCard(
                            prevBtn: InkResponse(
                              onTap: () {
                                scrollController.jumpTo(0.0);
                                handlePrevious(0);
                              },
                              child: const StepperBtn(nextorprev: 'Prev'),
                            ),
                            nextBtn: InkResponse(
                              onTap: () {
                                // Get the number of siblings, you can replace this with the actual number
                                int numberOfSiblings = context
                                    .read<FamilyBloc>()
                                    .state
                                    .numberOfSiblings;

                                // Loop to create SiblingData objects
                                for (int i = 0; i < numberOfSiblings; i++) {
                                  // You can replace this with the actual name
                                  String siblingGender = context
                                              .read<HorizontalRadioBtnBloc>()
                                              .state
                                              .groupValue ==
                                          0
                                      ? "m"
                                      : "f";
                                }
                                BlocProvider.of<FamilyInfoBloc>(context)
                                    .add(PostFamilyInfo(
                                  fathername: fathernameController.text,
                                  falive: context
                                          .read<CheckboxfirstBloc>()
                                          .state
                                          .alive
                                      ? 1
                                      : 0,
                                  fdisabled: context
                                          .read<CheckboxfirstBloc>()
                                          .state
                                          .notdisabled
                                      ? 0
                                      : 1,
                                  focupation: 3,
                                  fincome:
                                      int.parse(fatherincomeController.text),
                                  frelation: "father",
                                  mothername: mothernameController.text,
                                  malive: context
                                          .read<CheckboxsecBloc>()
                                          .state
                                          .alive
                                      ? 1
                                      : 0,
                                  mdisabled: context
                                          .read<CheckboxfirstBloc>()
                                          .state
                                          .disabled
                                      ? 0
                                      : 0,
                                  mocupation: 23,
                                  mincome:
                                      int.parse(motherincomeController.text),
                                  mrelation: "mrelation",
                                  guardianname: guardianameController.text,
                                  gincome:
                                      int.parse(guardiaincomeController.text),
                                  galive: context
                                          .read<CheckboxthirdBloc>()
                                          .state
                                          .alive
                                      ? 1
                                      : 0,
                                  gdisabled: context
                                          .read<CheckboxthirdBloc>()
                                          .state
                                          .disabled
                                      ? 1
                                      : 0,
                                  siblings:
                                      List.generate(numberOfSiblings, (index) {
                                    List siblingNames = [
                                      siblingnameController1.text,
                                      siblingnameController2.text,
                                      siblingnameController3.text,
                                      siblingnameController4.text,
                                      siblingnameController5.text,
                                    ];

                                    List<String> collectedNames = [];

                                    for (int i = 0;
                                        i < siblingNames.length;
                                        i++) {
                                      var nreone = siblingNames[i];
                                      collectedNames.add(nreone);
                                    }

                                    return SiblingData(
                                      name:
                                          siblingnameController1.text.isNotEmpty
                                              ? siblingNames[index]
                                              : "Default",
                                      gender: context
                                                  .read<
                                                      HorizontalRadioBtnBloc>()
                                                  .state
                                                  .groupValue ==
                                              0
                                          ? "m"
                                          : "f",
                                      course: 2,
                                      occupation: 5,
                                      qualification: 9,
                                    );
                                  }),
                                ));
                              },
                              child: const StepperBtn(
                                nextorprev: 'Next',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  stepIcon: Icons.family_restroom,
                ),
                AddStep(
                  status: validationAcademicBox.get('key')?.status == 1
                      ? 'Todo'
                      : validationAcademicBox.get('key')?.status == 2
                          ? 'completed'
                          : validationFamilyBox.get('key')?.status == 2
                              ? 'In Progress'
                              : 'Todo',
                  title: 'Academics',
                  content: Column(
                    children: [
                      AcademicsScreen(
                        examregcontroller: examregcontroller,
                        sslcmarks: sslcmarksController,
                        plusone_marks: plusoneMarksController,
                        plustwo_marks: plustwoMarksController,
                        examRegfocusnode: focuscontroller1,
                        sslcfocusnode: focuscontroller2,
                        plusonefocusnode: focuscontroller3,
                        plustwofocusnode: focuscontroller4,
                      ),
                      const HeightSpacer(),
                      AchievmentsScreen(focusNode: focuscontroller5),
                      BlocConsumer<AcademicBloc, AcademicState>(
                        listener: (context, state) {
                          state.successorFailure.fold(
                            () {},
                            (either) {
                              either.fold(
                                (failure) async {
                                  setState(() {
                                    validationAcademicBox.put(
                                      'key',
                                      ValidationAcademicScreenDB(status: 1),
                                    );
                                  });

                                  // ignore: avoid_print
                                  print(failure.toString());
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(failure.toString())));
                                },
                                (success) async {
                                  setState(() {
                                    validationAcademicBox.put(
                                      'key',
                                      ValidationAcademicScreenDB(status: 2),
                                    );
                                  });
                                  print(success.data.toString());
                                  scrollController.jumpTo(0.0);
                                  handleNextPage(3);
                                },
                              );
                            },
                          );
                        },
                        builder: (context, state) {
                          return BottomCard(
                            prevBtn: InkResponse(
                              onTap: () {
                                scrollController.jumpTo(0.0);
                                handlePrevious(1);
                              },
                              child: const StepperBtn(nextorprev: 'Prev'),
                            ),
                            nextBtn: InkResponse(
                              onTap: () {
                                String stringWithoutPercentsslc =
                                    sslcmarksController.text
                                        .replaceAll(RegExp(r'[^0-9]'), '');
                                String stringWithoutPercentplusone =
                                    plusoneMarksController.text
                                        .replaceAll(RegExp(r'[^0-9]'), '');
                                String stringWithoutPercentplustwo =
                                    plustwoMarksController.text
                                        .replaceAll(RegExp(r'[^0-9]'), '');
                                int parsedNumbersslc =
                                    int.parse(stringWithoutPercentsslc);
                                int parsedNumberplusone =
                                    int.parse(stringWithoutPercentplusone);
                                int parsedNumberplustwo =
                                    int.parse(stringWithoutPercentplustwo);
                                BlocProvider.of<AcademicBloc>(context).add(
                                  AcademicEvent.postAcademicInfo(
                                    school: context
                                        .read<SelectedSchoolBloc>()
                                        .state
                                        .selectedschool,
                                    reg_no: int.parse(examregcontroller.text),
                                    sslc: parsedNumbersslc,
                                    plus_one: parsedNumberplusone,
                                    plus_two: parsedNumberplustwo,
                                    course_pref: 39,
                                    category: 2,
                                    details: "Shyam",
                                    title: "ggbyuhj",
                                    description: "nbhhniukhihiuhh",
                                    attachment: "nbhhniukhihiuhh",
                                  ),
                                );
                              },
                              child: const StepperBtn(
                                nextorprev: 'Next',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  stepIcon: Icons.school_rounded,
                ),
                AddStep(
                  status: validationResidentailBox.get('key')?.status == 1
                      ? 'Todo'
                      : validationResidentailBox.get('key')?.status == 2
                          ? 'completed'
                          : validationAcademicBox.get('key')?.status == 2
                              ? 'In Progress'
                              : 'Todo',
                  title: 'Home',
                  content: Column(
                    children: [
                      HomeScreen(
                          landfocusNode: focuscontroller1,
                          landcontroller: landcontroller),
                      const HeightSpacer(),
                      BlocConsumer<PostResidentailDataBloc,
                          PostResidentailDataState>(
                        listener: (context, state) {
                          state.successorFailure.fold(
                            () {},
                            (either) {
                              either.fold(
                                (failure) async {
                                  setState(() {
                                    validationResidentailBox.put(
                                      'key',
                                      ValidationResidentailScreenDB(status: 1),
                                    );
                                  });

                                  // ignore: avoid_print
                                  print(failure.toString());
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(failure.toString())));
                                },
                                (success) {
                                  setState(() {
                                    validationResidentailBox.put(
                                      'key',
                                      ValidationResidentailScreenDB(status: 2),
                                    );
                                  });

                                  print(success.data.toString());
                                  scrollController.jumpTo(0.0);
                                  handleNextPage(3);
                                },
                              );
                            },
                          );
                        },
                        builder: (context, state) {
                          return BottomCard(
                            prevBtn: InkResponse(
                              onTap: () {
                                scrollController.jumpTo(0.0);
                                handlePrevious(2);
                              },
                              child: const StepperBtn(nextorprev: 'Prev'),
                            ),
                            nextBtn: InkResponse(
                              onTap: () {
                                BlocProvider.of<PostResidentailDataBloc>(
                                        context)
                                    .add(PostResidentailDataEvent
                                        .postResidentailInfo(
                                  houselandSize: landcontroller.text,
                                  housedrinkingwater: context
                                          .read<Question3ResBloc>()
                                          .state
                                          .pipewater
                                      ? "1"
                                      : context
                                              .read<Question3ResBloc>()
                                              .state
                                              .wellwater
                                          ? "2"
                                          : "3",
                                  houseroof: context
                                          .read<Question2ResBloc>()
                                          .state
                                          .sheet
                                      ? "1"
                                      : context
                                              .read<Question2ResBloc>()
                                              .state
                                              .concrete
                                          ? "2"
                                          : "3",
                                  houseOwnership: context
                                              .read<Question1ResBloc>()
                                              .state
                                              .ownHouse ==
                                          true
                                      ? "1"
                                      : "2",
                                ));
                              },
                              child: const StepperBtn(
                                nextorprev: 'Next',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  stepIcon: Icons.family_restroom,
                ),
              ],
              config: StepConfig(
                activeConfig: AcitiveUi(),
                inactiveConfig: InacitiveUi(
                  iconBgColor: Colors.black45,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
