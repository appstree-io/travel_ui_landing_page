import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';
import 'package:travel_ui_landing_page/widgets/widgets.dart';

class TopDestinations extends StatelessWidget {
  const TopDestinations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      vertical: 37,
      child: Column(
        children: const [
          TopDestinationsHeader(),
          SizedBox(height: 51),
          TopDestinationsImageGallery(),
        ],
      ),
    );
  }
}

class TopDestinationsImageGallery extends StatelessWidget {
  const TopDestinationsImageGallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.largerThan(name: MOBILE),
            Condition.equals(name: DESKTOP),
            Condition.largerThan(name: DESKTOP),
          ],
          child: TopDestinationsImageGalleryDesktop(),
        ),
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.equals(name: MOBILE),
            Condition.smallerThan(name: MOBILE),
          ],
          child: TopDestinationsImageGalleryMobile(),
        ),
      ],
    );
  }
}

class TopDestinationsImageGalleryMobile extends StatelessWidget {
  const TopDestinationsImageGalleryMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        _Image1(),
        _Image2(),
      ],
    );
  }
}

class TopDestinationsImageGalleryTablet extends StatelessWidget {
  const TopDestinationsImageGalleryTablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            _Image1(),
            _Image2(),
          ],
        ),
        const _Image3(),
      ],
    );
  }
}

class TopDestinationsImageGalleryDesktop extends StatelessWidget {
  const TopDestinationsImageGalleryDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            _Image1(),
            _Image2(),
          ],
        ),
        const _Image3(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _Image4(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                _Image5(),
                _Image6(),
              ],
            )
          ],
        )
      ],
    );
  }
}

class _Image6 extends StatelessWidget {
  const _Image6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopDestinationItemWidget(
      width: 270,
      height: 263,
      image: Assets.topDestinations.topDestination6.path,
      rating: 3.5,
      padding: const EdgeInsets.only(
        top: 6.5,
        left: 15,
      ),
    );
  }
}

class _Image5 extends StatelessWidget {
  const _Image5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopDestinationItemWidget(
      width: 170,
      height: 263,
      image: Assets.topDestinations.topDestination5.path,
      rating: 3.5,
      padding: const EdgeInsets.only(
        top: 6.5,
        left: 15,
        right: 15,
      ),
    );
  }
}

class _Image4 extends StatelessWidget {
  const _Image4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopDestinationItemWidget(
      width: 470,
      height: 250,
      image: Assets.topDestinations.topDestination4.path,
      rating: 3.5,
      padding: const EdgeInsets.only(
        bottom: 6.5,
        left: 15,
      ),
    );
  }
}

class _Image3 extends StatelessWidget {
  const _Image3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopDestinationItemWidget(
      width: 370,
      height: 526,
      image: Assets.topDestinations.topDestination3.path,
      rating: 3.5,
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
    );
  }
}

class _Image2 extends StatelessWidget {
  const _Image2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopDestinationItemWidget(
      width: 270,
      height: 250,
      image: Assets.topDestinations.topDestination2.path,
      rating: 3.5,
      chipBackgroundColor: Colors.white,
      chipTextColor: AppsColors.defaultTextColor,
      padding: const EdgeInsets.only(
        top: 13,
        right: 15,
      ),
    );
  }
}

class _Image1 extends StatelessWidget {
  const _Image1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopDestinationItemWidget(
      width: 270,
      height: 250,
      image: Assets.topDestinations.topDestination1.path,
      rating: 3.5,
      chipBackgroundColor: Colors.white,
      chipTextColor: AppsColors.defaultTextColor,
      padding: const EdgeInsets.only(
        bottom: 13,
        right: 15,
      ),
    );
  }
}

class TopDestinationsHeader extends StatelessWidget {
  const TopDestinationsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ModuleHeadingTitle(
          title: 'Top Destinations',
        ),
        const SizedBox(height: 16),
        Text(
          'Sost Brilliant reasons Entrada should be your one-stop-shop!',
          style: TextStyles.inter(
            context: context,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 28),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TopDestinationChip(
              title: 'London',
              backgroundColor: Color(0xFF3D3D3D),
              textColor: Colors.white,
            ),
            TopDestinationChip(title: 'Bangkok'),
            TopDestinationChip(title: 'England'),
            TopDestinationChip(title: 'Singapore'),
            TopDestinationChip(title: 'Italy'),
          ],
        ),
      ],
    );
  }
}
