import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/widgets/story_view.dart';

class ImpoStory extends StatelessWidget {
  final StoryController controller = StoryController();

  ImpoStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () => Future(() => false),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: StoryView(
            controller: controller,
            // onComplete: OnboardingController.to.onComplete,
            // onStoryShow: (value) => OnboardingController.to.currentStory = stories.indexOf(value.view),
            // controller: OnboardingController.to.storyController,
            storyItems: [
              for (int index = 0; index < 5; index++)
                StoryItem(
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: VideoStory(
                      url: 'https://files.liara.ir/liara/domain/dns.mp4',
                    ),
                  ),
                  duration: const Duration(seconds: 15),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoStory extends StatelessWidget {
  final String url;

  const VideoStory({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryVideo.url(
            url,
          ),
          Positioned(
            bottom: 32,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('بزن روش'),
            ),
          ),
        ],
      ),
    );
  }
}
