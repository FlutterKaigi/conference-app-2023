import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_static_maps_controller/google_static_maps_controller.dart';

const _navitimeLatLng = GeocodedLocation.latLng(35.6672, 139.7150);

class LocationMapPage extends StatelessWidget {
  const LocationMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    const maxSize = 600.0;

    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: context.spacing,
        ),
        child: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: maxSize,
              ),
              child: Row(
                children: [
                  const Spacer(),
                  OutlinedButton(
                    onPressed: () async => launchInExternalApp(
                      Uri.parse(
                        'https://www.navitime.co.jp/maps/poi?code=02010-0000000001',
                      ),
                    ),
                    child: const Text('NAVITIME Map'),
                  ),
                  const Gap(8),
                  OutlinedButton(
                    onPressed: () async => launchInExternalApp(
                      Uri.parse(
                        'https://maps.app.goo.gl/9ibs3TyTcgajHazE9',
                      ),
                    ),
                    child: const Text('Google Map'),
                  ),
                ],
              ),
            ),
            const Gap(16),
            const StaticMap(
              googleApiKey: String.fromEnvironment('google_map_api_key'),
              width: maxSize,
              height: maxSize,
              zoom: 15,
              center: _navitimeLatLng,
              visible: [
                _navitimeLatLng,
              ],
              markers: [
                Marker(
                  label: 'N',
                  locations: [
                    _navitimeLatLng,
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
