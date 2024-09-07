import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../controller/class_list_controller.dart';

class ClassListPage extends StatelessWidget {
  const ClassListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Classes'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: GetBuilder<ClassListController>(
        init: ClassListController(),
        builder: (controller) {
          if (controller.isLoading) {
            return const ShimmerList();
          } else if (controller.liveClassModel == null ||
              controller.liveClassModel!.data == null ||
              controller.liveClassModel!.data!.data.isEmpty) {
            return const Center(
              child: Text(
                'No live classes available.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          } else {
            return ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: controller.liveClassModel!.data!.data.length,
              itemBuilder: (context, index) {
                final liveClass = controller.liveClassModel!.data!.data[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: liveClass.image != null
                          ? Image.network(
                        liveClass.image!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      )
                          : const Icon(Icons.image_not_supported, size: 80),
                    ),
                    title: Text(
                      liveClass.title ?? 'No Title',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        Text(
                          'Teacher: ${liveClass.teachers?.name ?? "N/A"}',
                          style:  TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Time: ${liveClass.startDatetime != null ? '${liveClass.startDatetime!.hour}:${liveClass.startDatetime!.minute}' : "N/A"}',
                          style:  TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class ShimmerList extends StatelessWidget {
  const ShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 10,
      itemBuilder: (_, __) => Card(
        margin: const EdgeInsets.only(bottom: 16.0),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16.0),
          leading: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.white,
            ),
          ),
          title: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: 100,
              height: 16,
              color: Colors.white,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: 80,
                  height: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2),
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: 60,
                  height: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
