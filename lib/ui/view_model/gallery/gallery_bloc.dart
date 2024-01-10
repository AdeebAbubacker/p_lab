import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/gallery/gallery.dart';
import 'package:panakj_app/core/service/gallery_service.dart';

part 'gallery_event.dart';
part 'gallery_state.dart';
part 'gallery_bloc.freezed.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  final galleryService = GalleryService();
  GalleryBloc() : super(GalleryState.initial()) {
      on<GetGalleryImg>((event, emit) async {
      try {
        final response = await galleryService.GetgalleryImg();
        emit(GalleryState(
          isLoading: false,
          isError: false,
          gallery: response,
          successorFailure: optionOf(right(response)),
        ));
        // ignore: avoid_print
      } catch (e) {
        emit(GalleryState(
          isLoading: false,
          isError: true,
          gallery: Gallery(),
          successorFailure:
              optionOf(left(MainFailure.clientFailure(message: e.toString()))),
        ));
      }
    });
  }
}


// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:panakj_app/core/model/drop_down_values/drop_down_values.dart';
// import 'package:panakj_app/core/model/failure/mainfailure.dart';
// import 'package:panakj_app/core/service/drop_down_value_service.dart';

// part 'get_dropdown_values_event.dart';
// part 'get_dropdown_values_state.dart';
// part 'get_dropdown_values_bloc.freezed.dart';

// class GetDropdownValuesBloc
//     extends Bloc<GetDropdownValuesEvent, GetDropdownValuesState> {
//   final dropDownService = DropDownService();
//   GetDropdownValuesBloc() : super(GetDropdownValuesState.initial()) {
//     on<GetDropDownValues>((event, emit) async {
//       try {
//         final response = await dropDownService.getDropDownValue();
//         emit(GetDropdownValuesState(
//           isLoading: false,
//           isError: false,
//           dropDownValue: response,
//           successorFailure: optionOf(right(response)),
//         ));
//         // ignore: avoid_print
//       } catch (e) {
//         emit(GetDropdownValuesState(
//           isLoading: false,
//           isError: true,
//           dropDownValue: DropDownValues(),
//           successorFailure:
//               optionOf(left(MainFailure.clientFailure(message: e.toString()))),
//         ));
//       }
//     });
//   }
// }

