import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/db/adapters/bank_adapter/bank_adapter.dart';
import 'package:panakj_app/core/db/adapters/course_adapter/course_adapter.dart';
import 'package:panakj_app/core/db/adapters/family_success_status/family_status_adapter.dart';
import 'package:panakj_app/core/db/adapters/occupation_adapter/occupation_adapter.dart';
import 'package:panakj_app/core/db/adapters/personal_info_adapter/personal_info_adapter.dart';
import 'package:panakj_app/core/db/adapters/qualification_adapter/qualification_adapter.dart';
import 'package:panakj_app/core/db/adapters/school_adapter/school_adapter.dart';
import 'package:panakj_app/core/db/adapters/validation_academics/validation_academicadapter.dart';
import 'package:panakj_app/core/db/adapters/validation_familyscreen/validation_familyscreenadapter.dart';
import 'package:panakj_app/core/db/adapters/validation_personalinfo/validation_personalinfoadapter.dart';
import 'package:panakj_app/core/db/adapters/validation_residential/validation_residentialadapter.dart';
import 'package:panakj_app/core/db/boxes/bank_box.dart';
import 'package:panakj_app/core/db/boxes/course_box.dart';
import 'package:panakj_app/core/db/boxes/family_status_box.dart';
import 'package:panakj_app/core/db/boxes/occupation_box.dart';
import 'package:panakj_app/core/db/boxes/personal_info_box.dart';
import 'package:panakj_app/core/db/boxes/qualification_box.dart';
import 'package:panakj_app/core/db/boxes/school_box.dart';
import 'package:panakj_app/core/db/boxes/validation_academicBox.dart';
import 'package:panakj_app/core/db/boxes/validation_familyBox.dart';
import 'package:panakj_app/core/db/boxes/validation_personalinfoBox.dart';
import 'package:panakj_app/core/db/boxes/validation_residentialBox.dart';
import 'package:panakj_app/ui/screens/auth/splash_screen.dart';
import 'package:panakj_app/ui/view_model/Dob/dob_bloc.dart';
import 'package:panakj_app/ui/view_model/acadmicdetails/academic_bloc.dart';
import 'package:panakj_app/ui/view_model/add_achievment/add_achievment_bloc.dart';
import 'package:panakj_app/ui/view_model/auth/auth_bloc.dart';
import 'package:panakj_app/ui/view_model/checkboxfirst/checkboxfirst_bloc.dart';
import 'package:panakj_app/ui/view_model/checkboxsec/checkboxsec_bloc.dart';
import 'package:panakj_app/ui/view_model/checkboxthird/checkboxthird_bloc.dart';
import 'package:panakj_app/ui/view_model/family/family_bloc.dart';
import 'package:panakj_app/ui/view_model/familyInfo/family_info_bloc.dart';
import 'package:panakj_app/ui/view_model/gallery/gallery_bloc.dart';
import 'package:panakj_app/ui/view_model/get_dropdown_values/get_dropdown_values_bloc.dart';
import 'package:panakj_app/ui/view_model/get_news/get_news_bloc.dart';
import 'package:panakj_app/ui/view_model/horizontal_radio_btn/horizontal_radio_btn_bloc.dart';
import 'package:panakj_app/ui/view_model/personalInfo/personal_info_bloc.dart';
import 'package:panakj_app/ui/view_model/post_residentail_data/post_residentail_data_bloc.dart';
import 'package:panakj_app/ui/view_model/question1_res/question1_res_bloc.dart';
import 'package:panakj_app/ui/view_model/question2_res/question2_res_bloc.dart';
import 'package:panakj_app/ui/view_model/question3_res/question3_res_bloc.dart';
import 'package:panakj_app/ui/view_model/search_bank/get_bank_bloc.dart';
import 'package:panakj_app/ui/view_model/search_courses/courses_bloc.dart';
import 'package:panakj_app/ui/view_model/search_occupation/search_occupation_bloc.dart';
import 'package:panakj_app/ui/view_model/search_qualification/search_qualification_bloc.dart';
import 'package:panakj_app/ui/view_model/search_school/search_school_bloc.dart';
import 'package:panakj_app/ui/view_model/selctedbank/selctedbank_bloc.dart';
import 'package:panakj_app/ui/view_model/selected_course/selected_course_bloc.dart';
import 'package:panakj_app/ui/view_model/selected_occupation/selected_occupation_bloc.dart';
import 'package:panakj_app/ui/view_model/selected_qualification/selected_qualification_bloc.dart';
import 'package:panakj_app/ui/view_model/selected_school/selected_school_bloc.dart';
import 'package:panakj_app/ui/view_model/students_app_form/students_app_form_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//-------------Initialize Hive----------------------------
  await Hive.initFlutter();
//-------------register adapter----------------------------
  Hive.registerAdapter(BankDBAdapter());
  Hive.registerAdapter(personalInfoDBAdapter());
  Hive.registerAdapter(CourseDBAdapter());
  Hive.registerAdapter(SchoolDBAdapter());
  Hive.registerAdapter(qualificationDBAdapter());
  Hive.registerAdapter(FamilyStatusDBAdapter());
  Hive.registerAdapter(OccupationDBAdapter());
  Hive.registerAdapter(ValidationPersonalInfoScreenDBAdapter());
  Hive.registerAdapter(ValidationFamilyScreenDBAdapter());
  Hive.registerAdapter(ValidationAcademicScreenDBAdapter());
  Hive.registerAdapter(ValidationResidentailScreenDBAdapter());

//----------------open box-------------------------------------------------
  bankBox = await Hive.openBox<BankDB>('bankBox');
  personalInfoBox = await Hive.openBox<personalInfoDB>('personalInfoBox');
  courseBox = await Hive.openBox<CourseDB>('courseBox');
  schoolBox = await Hive.openBox<SchoolDB>('schoolBox');
  occupationBox = await Hive.openBox<OccupationDB>('occupationBox');
  qualificationBox = await Hive.openBox<qualificationDB>('qualificationBox');

  familystatusInfoBox =
      await Hive.openBox<FamilyStatusDB>('familystatusInfoBox');
  validationPersonalInfoBox =
      await Hive.openBox<ValidationPersonalInfoScreenDB>(
          'validationPersonalInfoBox');
  validationFamilyBox =
      await Hive.openBox<ValidationFamilyScreenDB>('validationFamilyBox');
  validationAcademicBox =
      await Hive.openBox<ValidationAcademicScreenDB>('validationAcademicBox');
  validationResidentailBox = await Hive.openBox<ValidationResidentailScreenDB>(
      'validationResidentailBox');

//----------------lock in portrait mode----------------------------------
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HorizontalRadioBtnBloc(),
        ),
        BlocProvider(
          create: (context) => StudentsAppFormBloc(),
        ),
        BlocProvider(
          create: (context) => FamilyBloc(),
        ),
        BlocProvider(
          create: (context) => AddAchievmentBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => PersonalInfoBloc(),
        ),
        BlocProvider(
          create: (context) => DobBloc(),
        ),
        BlocProvider(
          create: (context) => GetBankBloc(),
        ),
        BlocProvider(
          create: (context) => FamilyInfoBloc(),
        ),
        BlocProvider(
          create: (context) => GetDropdownValuesBloc(),
        ),
        BlocProvider(
          create: (context) => CoursesBloc(),
        ),
        BlocProvider(
          create: (context) => SearchSchoolBloc(),
        ),
        BlocProvider(
          create: (context) => SearchQualificationBloc(),
        ),
        BlocProvider(
          create: (context) => GalleryBloc(),
        ),
        BlocProvider(
          create: (context) => GetNewsBloc(),
        ),
        BlocProvider(
          create: (context) => AcademicBloc(),
        ),
        BlocProvider(
          create: (context) => CheckboxfirstBloc(),
        ),
        BlocProvider(
          create: (context) => CheckboxsecBloc(),
        ),
        BlocProvider(
          create: (context) => CheckboxthirdBloc(),
        ),
        BlocProvider(
          create: (context) => SelctedbankBloc(),
        ),
        BlocProvider(
          create: (context) => SelectedCourseBloc(),
        ),
        BlocProvider(
          create: (context) => SelectedOccupationBloc(),
        ),
        BlocProvider(
          create: (context) => SelectedQualificationBloc(),
        ),
        BlocProvider(
          create: (context) => PostResidentailDataBloc(),
        ),
        BlocProvider(
          create: (context) => SearchOccupationBloc(),
        ),
        BlocProvider(
          create: (context) => SelectedOccupationBloc(),
        ),
        BlocProvider(
          create: (context) => SelectedSchoolBloc(),
        ),
        BlocProvider(
          create: (context) => Question1ResBloc(),
        ),
        BlocProvider(
          create: (context) => Question2ResBloc(),
        ),
        BlocProvider(
          create: (context) => Question3ResBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(useMaterial3: false),
        home: const SplashScreen(),
      ),
    );
  }
}
