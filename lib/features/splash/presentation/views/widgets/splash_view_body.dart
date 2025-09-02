import 'package:bookly/constents.dart';
import 'package:bookly/core/Utils/app_routes.dart';
import 'package:bookly/core/Utils/assets.dart';
import 'package:bookly/features/home/presention/view/home_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToMoethod();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(image: AssetImage(AssetsData.logo)),
        const SizedBox(height: 4),
        SlidingAnimation(slideAnimation: slideAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToMoethod() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTransitionDuration);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
