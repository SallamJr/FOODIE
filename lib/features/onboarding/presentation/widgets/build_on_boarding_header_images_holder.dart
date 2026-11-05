//

part of '../screens/on_boarding_screen.dart';

class _BuildOnBoardingHeaderImagesHolder extends StatelessWidget {
  const _BuildOnBoardingHeaderImagesHolder();

  @override
  Widget build(BuildContext context) {
    final onBoardingHeaderImages = [
      AppAssets.firstOnBoardingHeaderImage,
      AppAssets.secondOnBoardingHeaderImage,
      AppAssets.thirdOnBoardingHeaderImage,
      AppAssets.fourthOnBoardingHeaderImage,
    ];

    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: onBoardingHeaderImages.length,
          itemBuilder: (context, index, realIndex) {
            final path = onBoardingHeaderImages[index];

            // If the asset is an SVG, try to detect an embedded base64 raster image
            // and render it as Image.memory. Otherwise fall back to SvgPicture.
            if (path.toLowerCase().endsWith('.svg')) {
              return FutureBuilder<String>(
                future: DefaultAssetBundle.of(context).loadString(path),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SizedBox(width: double.infinity, height: 300);
                  }
                  final svg = snapshot.data!;

                  // Look for data URI base64 image inside the SVG (common when designers
                  // embed PNG/JPG inside SVG via <image xlink:href="data:image/...base64,..."/>)
                  final reg = RegExp(r'xlink:href\s*=\s*"data:image/[^;]+;base64,([^\"]+)"');
                  final match = reg.firstMatch(svg);
                  if (match != null && match.groupCount >= 1) {
                    try {
                      final b64 = match.group(1)!;
                      final bytes = base64Decode(b64);
                      return Image.memory(
                        bytes,
                        width: double.infinity,
                       // height: 300, // You can set a fixed height or use constraints
                        fit: BoxFit.fitWidth,
                      );
                    } catch (_) {
                      // fall through to SvgPicture if decoding fails
                    }
                  }

                  // No embedded raster found or decode failed — render SVG normally
                  return SvgPicture.string(
                    svg,
                    width: double.infinity,
                    // height: 300, // You can set a fixed height or use constraints
                    fit: BoxFit.fitWidth,
                  );
                },
              );
            }

            // Non-SVG (raster) fallback
            return Image.asset(
              path,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            );
          },
          options: CarouselOptions(
            height: 300,
            autoPlay: false,
            viewportFraction: 1.0,
          ),
        ),
      ],
    );
  }
}