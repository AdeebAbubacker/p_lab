import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/ui/view_model/gallery/gallery_bloc.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<GalleryBloc>(context)
          .add(const GalleryEvent.getGalleryImg());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<GalleryBloc, GalleryState>(
          builder: (context, state) {
            if (state.isError) {
              // ignore: avoid_print
              print('error');
              return const Text('error');
            } else if (state.isLoading) {
              // ignore: avoid_print
              print('loading');
              return const CircularProgressIndicator();
            }
            // ignore: avoid_print
            print('success');
            if (state.gallery.data == null) {
              return const Center(child: CircularProgressIndicator());
            }
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: state.gallery.data!.length ?? 0,
              itemBuilder: (context, index) {
                final imageUrl =
                    state.gallery.data![index].images.toString() ?? '';
                return GridTile(
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
