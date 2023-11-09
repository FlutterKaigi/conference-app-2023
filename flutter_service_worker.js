'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "ae45dea70e6c64a1519909d37519ddb3",
"icons/Icon-192.png": "a679793b3e27bbf310d4b4dc901c4cad",
"icons/Icon-maskable-192.png": "a679793b3e27bbf310d4b4dc901c4cad",
"icons/Icon-512.png": "ecae8f5e99edbe5f16f48cf7d14dfbec",
"icons/Icon-maskable-512.png": "ecae8f5e99edbe5f16f48cf7d14dfbec",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "48b74fb42aceae2b8b276ad8e6c662ab",
"assets/AssetManifest.bin.json": "3a7c4f8a6e9cbf5420b2f89a857ba1df",
"assets/assets/svg/flutterkaigi_logo.svg": "a96e950a03340a5025b0ee0d76a9b37f",
"assets/AssetManifest.json": "464a727cd729a91e84eb2600916eb3ed",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "48e5f7406fe0f4cfe4733e8cfab06f60",
"assets/fonts/MaterialIcons-Regular.otf": "8f40f3c88547512b6e114340bc9f2e94",
"assets/NOTICES": "cad47e2ad708fcf0d0290b96b3ff6b3f",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"404.html": "603a089184ff8eac1bb30a1b9ee1113b",
"index.html": "ab42a4760f71ef15d6dad5314b4f1ed2",
"/": "ab42a4760f71ef15d6dad5314b4f1ed2",
"images/98252f0ea0565f4b93e2607c4b15d89f572f44d1.png": "e1bdb86e949844a54d400efcc71f9f2f",
"images/a20c1b8702c0ad61db18dc73cb955c81ec18f78f.jpeg": "8f3603848a166d14f16757b7025be2fd",
"images/2ad43eea2abbc61cebc790eeacf3e13ba0a72f01.png": "42d13eb9a4d508fd8cb58a487d58be3a",
"images/2c800a6e-aed3-4834-885c-5a611bb466d7.jpg": "fe2ed1d729a25873a84c49c282325911",
"images/a6dc3eedadf3f5eb664aae25095ca72a7489c1b0.jpg": "a6c60ef346e22ae54bfa4b22bea75b31",
"images/ede347a1-3244-49de-a260-338aeb4fe8d8.jpg": "dce69fb29ef912ca4f6f7c6ca9152ac4",
"images/56cabe68abccb62962db4743c320ddddf75482bd.png": "f26371a7bc18a842553bbad38e06ed05",
"images/e0c4b590b0e69f780d776c2cc61db0a3cc31fc6f.jpeg": "c68c186a4bd16ab132de61d00468c709",
"images/c6fbd61fa955a6fcde6fbe7072a5ab625898c14c.jpg": "f7b809dd401658360657f35dfe7f38cf",
"images/d86dd75dc3e418fac3d26c5195fa4c49b9067ba5.jpg": "61677d1a6bfc835b3fd43557783c7a97",
"images/4e852a559e24390a3c69c0fca9cfc6e50726ed9f.png": "596d1c46f05c94c2fb1a447ac37aefb2",
"images/c3cb86bac2dab4f68f55637528dc54b53f7f9493.png": "d91c1b4621b47d827103fd99bc1743cb",
"images/a44c4866fae0ba65c9000dc40c64c9e5947db4ba.jpg": "d52f4139cf53811768029c74d693e120",
"images/798257461752ad3007129fbe5018fef1f3d771b8.jpg": "d0fd82e68b04b945e891b7714c7b9ee2",
"images/3bcbd2cc0734ac40b8d4d6ac36de8f5c61fc569e.png": "6c4b9cdf5a3fcbab5ef9f2aed271ce21",
"images/002c02d64fafbd715b053d35633a893ef4b7291a.png": "753516f7a0cffb4892bc73146b1f313b",
"images/c1cf3326-b028-4968-afb0-7059e29a56aa.jpg": "147fd5a857d92b156d73a53ff4d811a6",
"images/ee42534a-a155-4c21-b6ca-f003731991e2.jpg": "eb7f8c1b240bba21f8382ca75a158584",
"images/9dd3dcc1630213cb238103a31f21067d82260498.png": "db2617c601ffda099caa9dc39fe9f503",
"images/cae6240d94423104e34994079203df70a81e0873.jpg": "331068dd4f67f0e8877be09a17a45425",
"images/2da4644a-cb3b-445c-a6e0-63fbfdfc56ca.jpg": "6699134cd344cf3597061b1f64542bac",
"images/5d964d4c-97c2-4fef-8449-483b879b9e7c.jpeg": "65a69942c979c8f159b1a6b88595f1eb",
"images/715cfbf28ac8563dfa8efac52482568259e4e932.jpg": "0e3115f842dd5eefe46a5081ae940dfe",
"images/df1b8b1f1ef2d6d59d74cc06be6a1b36f1cbbaf8.png": "e628efe1b509e35987ed064af2e696d2",
"images/189e8cd78ec487b5ac16aaf7139edbc90bffd359.jpeg": "13927621d38c3073f3c25a4923857cc8",
"images/dc4df65121eeb9a66aa5d0a26bf3225810a801de.jpg": "a98dc3bbb4e4c8b089e70de24ad9e260",
"images/15a5840c-2b5c-4c87-96d7-35c6878ec4e9.jpg": "a4ff496772e952449ce736a1d2d6f463",
"images/70cdddb1-bd7d-4d53-beb6-65fa82f73e99.jpg": "84a5a47d988b0e3993c7207bf873bcdf",
"images/d94625ae60d0db5775bf1dd89b5f254fb5fbc084.jpeg": "397099d5e5debecae88ccb8d3933604a",
"images/9f18026bc64dbbd310d85030ea3f1638e5a5036e.jpg": "0721f0084754e7633e4299fcc40fec87",
"images/07d67bd95e83032256abb1e330b66aa245c71ab0.jpeg": "d7feffb988233429b410b60c9064e12c",
"images/cc7320a7-988c-42c0-a80a-56d8ff53fe6e.jpg": "15472e1afb250fe65924c6a371d1038c",
"images/4f13d4b2-35a7-46d0-a905-f0bda0ff505b.jpg": "1083aa45e0ca954019010c9cb8559b84",
"images/c598a07f0fef0dbba40b8bb9b9c8c12ea8842c18.png": "8a60e3aa05e5b23850bea58a6f21b4c2",
"images/52b19707-6447-42ac-9f7d-77375845d576.jpg": "cf16ad7cce3753277f03a31b21559bdf",
"images/224b6ab9fc43a28c6275cac0ffd476cc104a20b2.png": "cba0f369357d50d9bd12583298e0f68b",
"images/2c80c02ad32812b6b5779216db6480ed69a26b2a.jpeg": "cb8e2c370de8602a9cc9c8b8e228d74f",
"images/f8822bb79d5049344724addb04db7e27991ae493.jpeg": "2dfaa59300f36571ac2df49295c88f37",
"images/9a9e3ea70ae3d50259bfbefdca98a5219cb0b4c4.png": "2045e21d272346e35bbee47f09a16925",
"images/12fd1f1559730d26f6f66d3453d7bade04941c00.jpeg": "459e16a1b485b74225f00f9dc36fb314",
"images/8e3129b9-9c53-4055-b425-c18e497b1ea8.jpg": "4ae8d1ba58daa427e2faee594e36f5b6",
".well-known/apple-app-site-association": "dafff7ab3ada51afc8955eca78079810",
".well-known/assetlinks.json": "77e6d0f0c08e5f537bd72e556e554960",
"sponsors/harmo.png": "b79478e0590432d3793491fa8824bc28",
"sponsors/flutter.png": "d0515092173211776ceed19b39c2a041",
"sponsors/10x.png": "1ddd3e5a60c3102bf58bf8aeae5acb8b",
"sponsors/cyberagent.png": "5929f6941f7e18056f656e7e8c82fa22",
"sponsors/recruit.jpg": "4b629f170adf870744025da9d88c189a",
"sponsors/tokyu.png": "49d36565276c377ac06a5e5398287d79",
"sponsors/navitime.png": "f2bcd3ee48e9c062622277df68ff4a15",
"sponsors/magicpod.png": "d4a1926a7ae70cf76d967d20fe3e427b",
"sponsors/layerx.png": "4f18737ccea14dd566183d2f50a90879",
"sponsors/demaecan.png": "4d7ebd968dd758fe3ad9193cc42bb1c4",
"sponsors/diverse.png": "44b510df77b00c907651149996266511",
"sponsors/yumemi.png": "072a90d6679a0ff79806373237651677",
"sponsors/pioneer.png": "5731a696aaf035255b6eb6a8041d5b11",
"sponsors/bitkey.png": "8380d9f15c9fbc46ef6b782c00ed9165",
"sponsors/youtrust.png": "0c20bc773a6a9f5062c82b3365c2f576",
"sponsors/m3.png": "3732e6884f0c13561a8961d4b18c5aef",
"sponsors/studyplus.png": "8c48d9d79b7c697567691b6205a5514d",
"sponsors/enechain.png": "5c0faedf77573063e6b487cc50e65c1a",
"main.dart.js": "94ec31ae8200a1687efc04954f382ca7",
"venue/floor_map.png": "60497ab3d3eace4b8aa80f1b107e8370",
"manifest.json": "83a820d988f4f579fec753ffde48a2f8",
"version.json": "553a467b129c0b2b10b89d2fc675c476",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
