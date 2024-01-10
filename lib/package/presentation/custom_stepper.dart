import 'package:panakj_app/package/core/constants.dart';
import 'package:panakj_app/package/widget/connector.dart';
import 'package:panakj_app/package/widget/myAppbar.dart';
import 'package:panakj_app/package/widget/statusChecker.dart';
import 'package:panakj_app/package/widget/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';

class CustomStepper extends StatefulWidget {
  final List<AddStep> steps;
  final StepConfig? config;
  final bool pagesLocked;
  final ScrollController scrollController;
  int currentPage;
  final EdgeInsets margin;
  final EdgeInsets padding;

  final Map<String, Map<String, double>> uiConfig;

  CustomStepper({
    Key? key,
    required this.steps,
    this.currentPage = 0,
    this.padding = const EdgeInsets.only(left: 0, right: 0),
    this.margin = const EdgeInsets.only(left: 0, right: 0),
    required this.scrollController,
    this.uiConfig = const {
      "head": {
        "marginLeft": 15,
        "marginRight": 15,
        "marginTop": 0,
        "marginBottom": 0,
        "paddingLeft": 0,
        "paddingRight": 0,
        "paddingTop": 0,
        "paddingBottom": 0,
      },
      "body": {
        "marginLeft": 0,
        "marginRight": 0,
        "marginTop": 0,
        "marginBottom": 0,
        "paddingLeft": 0,
        "paddingRight": 0,
        "paddingTop": 0,
        "paddingBottom": 0,
      },
    },
    this.config,
    this.pagesLocked = false,
  }) : super(key: key);

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    List<bool> toggleStates = [];
    double singleCtrLgt = 10;
    int pageLength = widget.steps.length;
    int pageLengthIndex = pageLength - 1;
    List stepActive;
    toggleStates =
        List.generate(pageLength, (index) => index == widget.currentPage);
    stepActive =
        List.generate(pageLength, (index) => widget.pagesLocked ? false : true);
    stepActive[0] = true;

    void onToggleClicked(int page) {
      setState(() {
        widget.currentPage = page;
        for (var i = 0; i < toggleStates.length; i++) {
          toggleStates[i] = i == page;
        }
      });
    }

    // void continueStep() {
    //   int nextPage = widget.currentPage + 1;

    //   if (stepActive[nextPage] && widget.currentPage < pageLengthIndex) {
    //     widget.currentPage += 1;
    //     onToggleClicked(nextPage);
    //   } else {
    //     ScaffoldMessenger.of(context)
    //         .showSnackBar(const SnackBar(content: Text('Page Locked!')));
    //   }
    // }

    // void cancelStep() {
    //   if (widget.currentPage > 0) {
    //     onToggleClicked(widget.currentPage - 1);
    //   }
    // }

    var deviceWidth = MediaQuery.of(context).size.width;
    var devicePaddingLeft = 15;
    var devicePaddingRight = 15;
    var tgBtnTotalWidth = 36;
    var tgBtnTotalArea = tgBtnTotalWidth * pageLength;
    var ctrLgt =
        deviceWidth - devicePaddingLeft - devicePaddingRight - tgBtnTotalArea;
    singleCtrLgt = ctrLgt / pageLengthIndex;
    var uiConfig = widget.uiConfig;
    var headUi = uiConfig["head"];
    var headUiMarginLeft = headUi!["marginLeft"] as double;
    var headUiMarginRight = headUi["marginRight"] as double;
    var headUiMarginTop = headUi["marginTop"] as double;
    var headUiMarginBottom = headUi["marginBottom"] as double;
    int wizardCount = pageLength;
    var wizardTabWidth =
        (deviceWidth - headUiMarginLeft - headUiMarginRight) / wizardCount;
    double connectorWidth = ctrLgt / wizardCount;
    StepConfig configureStep = widget.config ?? StepConfig();

    List<Widget> generateUI() {
      List<Widget> widgets = [];

      for (int index = 0; index <= pageLengthIndex; index++) {
        widgets.add(
          Container(
            height: 119,
            width: wizardTabWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ToggleBtn(
                      onToggle: () => onToggleClicked(index),
                      isActive: toggleStates[index],
                      currentStep: widget.steps[index].stepIcon,
                      activeIconBgColor: configureStep.activeConfig.iconBgColor,
                      inactiveIconBgColor:
                          configureStep.inactiveConfig.iconBgColor,
                      activeIconColor: configureStep.activeConfig.iconColor,
                      inactiveIconColor: configureStep.inactiveConfig.iconColor,
                    ),
                    if (index < pageLengthIndex)
                      Connector(
                        width: connectorWidth,
                        myColor: const Color(0xFF702DE3),
                      ),
                  ],
                ),
                StatusChecker(
                  activeStepColor: configureStep.activeConfig.stepCountColor,
                  inactiveStepColor:
                      configureStep.inactiveConfig.stepCountColor,
                  activeTitleColor: configureStep.activeConfig.titleColor,
                  inactiveTitleColor: configureStep.inactiveConfig.titleColor,
                  activeTagColor: configureStep.activeConfig.tagBgcolor,
                  inactiveTagColor: configureStep.inactiveConfig.tagBgcolor,
                  activeTagTextColor: configureStep.activeConfig.tagTextColor,
                  inactiveTagTextColor:
                      configureStep.inactiveConfig.tagTextColor,
                  isActive: toggleStates[index],
                  status: widget.steps[index].status,
                  statusColor: statusInprogressText,
                  Step: 'Step ${index + 1}',
                  title: widget.steps[index].title,
                ),
              ],
            ),
          ),
        );
      }
      return widgets;
    }

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(67.0),
        child: myAppBar(leadingIcon: Icon(Icons.person)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: widget.scrollController,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: deviceWidth,
                height: 119,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 242, 242),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      4,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: headUiMarginLeft,
                          right: headUiMarginRight,
                          top: headUiMarginTop,
                          bottom: headUiMarginBottom),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: generateUI()),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Column(
                children: List.generate(
                  pageLength,
                  (index) {
                    return Visibility(
                      visible: widget.currentPage == index,
                      child: Padding(
                        padding: widget.padding,
                        child: Container(
                          margin: widget.margin,
                          child: widget.steps[index].content,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const HeightSpacer(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class AddStep {
  final String title;
  final Widget content;
  // ignore: prefer_typing_uninitialized_variables
  final stepIcon;
  // ignore: prefer_typing_uninitialized_variables
  final status;

  AddStep({
    required this.status,
    required this.stepIcon,
    required this.title,
    required this.content,
  });
}

class AcitiveUi {
  final Color iconBgColor;
  final Color iconColor;
  final Color stepCountColor;
  final Color titleColor;
  final Color tagBgcolor;
  final Color tagTextColor;

  AcitiveUi({
    this.iconBgColor = const Color(0xFF702DE3),
    this.iconColor = const Color.fromARGB(255, 255, 255, 255),
    this.stepCountColor = const Color.fromARGB(255, 0, 0, 0),
    this.titleColor = const Color.fromARGB(255, 9, 1, 0),
    this.tagBgcolor = const Color.fromARGB(255, 219, 217, 217),
    this.tagTextColor = const Color.fromARGB(255, 0, 0, 0),
  });
}

class InacitiveUi {
  final Color iconBgColor;
  final Color iconColor;
  final Color stepCountColor;
  final Color titleColor;
  final Color tagBgcolor;
  final Color tagTextColor;

  InacitiveUi({
    this.iconBgColor = const Color.fromARGB(255, 184, 180, 180),
    this.iconColor = const Color.fromARGB(255, 255, 255, 255),
    this.stepCountColor = const Color.fromARGB(255, 0, 0, 0),
    this.titleColor = const Color.fromARGB(255, 4, 0, 0),
    this.tagBgcolor = const Color.fromARGB(255, 219, 217, 217),
    this.tagTextColor = const Color.fromARGB(255, 0, 0, 0),
  });
}

class StepConfig {
  final AcitiveUi activeConfig;
  final InacitiveUi inactiveConfig;

  StepConfig({
    AcitiveUi? activeConfig,
    InacitiveUi? inactiveConfig,
  })  : activeConfig = activeConfig ?? AcitiveUi(),
        inactiveConfig = inactiveConfig ?? InacitiveUi();
}
