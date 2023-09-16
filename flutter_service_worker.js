'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/chromium/canvaskit.js": "36d162e8f857ceeacbf01ed75a382f56",
"canvaskit/chromium/canvaskit.wasm": "b3fabff5b6c1cb4d4e81f4551eba9ba2",
"canvaskit/canvaskit.js": "dd5b7e38ac853fcf41faa69cf49aa175",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "5256dd3e40ec9fe1fc9faa51a116bcfd",
"canvaskit/canvaskit.wasm": "6e7859012ffcf1d482a8bbc473b8171f",
"canvaskit/skwasm.wasm": "4ca73baf420612f1657d5b2be4b7467d",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/assets/svg/flutterkaigi_logo.svg": "a96e950a03340a5025b0ee0d76a9b37f",
"assets/AssetManifest.json": "464a727cd729a91e84eb2600916eb3ed",
"assets/NOTICES": "33fc7fdaefc19f064378b7f3065441f1",
"assets/AssetManifest.bin": "48b74fb42aceae2b8b276ad8e6c662ab",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "48e5f7406fe0f4cfe4733e8cfab06f60",
"assets/fonts/MaterialIcons-Regular.otf": "4e4e872beaca3c9dda55da87a32297f2",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"version.json": "72d4d604bf55ff2b46bcbbdb4e4dec4b",
"icons/Icon-maskable-192.png": "a679793b3e27bbf310d4b4dc901c4cad",
"icons/Icon-192.png": "a679793b3e27bbf310d4b4dc901c4cad",
"icons/Icon-maskable-512.png": "ecae8f5e99edbe5f16f48cf7d14dfbec",
"icons/Icon-512.png": "ecae8f5e99edbe5f16f48cf7d14dfbec",
"flutter.js": "0b19a3d1d54c58174c41cd35acdd9388",
"images/98252f0ea0565f4b93e2607c4b15d89f572f44d1.png": "e1bdb86e949844a54d400efcc71f9f2f",
"images/798257461752ad3007129fbe5018fef1f3d771b8.jpg": "d0fd82e68b04b945e891b7714c7b9ee2",
"images/cae6240d94423104e34994079203df70a81e0873.jpg": "331068dd4f67f0e8877be09a17a45425",
"images/e0c4b590b0e69f780d776c2cc61db0a3cc31fc6f.jpeg": "c68c186a4bd16ab132de61d00468c709",
"images/9dd3dcc1630213cb238103a31f21067d82260498.png": "db2617c601ffda099caa9dc39fe9f503",
"images/2ad43eea2abbc61cebc790eeacf3e13ba0a72f01.png": "42d13eb9a4d508fd8cb58a487d58be3a",
"images/d94625ae60d0db5775bf1dd89b5f254fb5fbc084.jpeg": "397099d5e5debecae88ccb8d3933604a",
"images/f8822bb79d5049344724addb04db7e27991ae493.jpeg": "2dfaa59300f36571ac2df49295c88f37",
"images/002c02d64fafbd715b053d35633a893ef4b7291a.png": "753516f7a0cffb4892bc73146b1f313b",
"images/9a9e3ea70ae3d50259bfbefdca98a5219cb0b4c4.png": "2045e21d272346e35bbee47f09a16925",
"images/715cfbf28ac8563dfa8efac52482568259e4e932.jpg": "0e3115f842dd5eefe46a5081ae940dfe",
"images/224b6ab9fc43a28c6275cac0ffd476cc104a20b2.png": "cba0f369357d50d9bd12583298e0f68b",
"images/dc4df65121eeb9a66aa5d0a26bf3225810a801de.jpg": "a98dc3bbb4e4c8b089e70de24ad9e260",
"images/c3cb86bac2dab4f68f55637528dc54b53f7f9493.png": "d91c1b4621b47d827103fd99bc1743cb",
"images/a44c4866fae0ba65c9000dc40c64c9e5947db4ba.jpg": "d52f4139cf53811768029c74d693e120",
"images/56cabe68abccb62962db4743c320ddddf75482bd.png": "f26371a7bc18a842553bbad38e06ed05",
"images/a6dc3eedadf3f5eb664aae25095ca72a7489c1b0.jpg": "a6c60ef346e22ae54bfa4b22bea75b31",
"images/4e852a559e24390a3c69c0fca9cfc6e50726ed9f.png": "596d1c46f05c94c2fb1a447ac37aefb2",
"images/df1b8b1f1ef2d6d59d74cc06be6a1b36f1cbbaf8.png": "e628efe1b509e35987ed064af2e696d2",
"images/12fd1f1559730d26f6f66d3453d7bade04941c00.jpeg": "459e16a1b485b74225f00f9dc36fb314",
"images/c6fbd61fa955a6fcde6fbe7072a5ab625898c14c.jpg": "f7b809dd401658360657f35dfe7f38cf",
"images/9f18026bc64dbbd310d85030ea3f1638e5a5036e.jpg": "0721f0084754e7633e4299fcc40fec87",
"images/d86dd75dc3e418fac3d26c5195fa4c49b9067ba5.jpg": "61677d1a6bfc835b3fd43557783c7a97",
"images/c598a07f0fef0dbba40b8bb9b9c8c12ea8842c18.png": "8a60e3aa05e5b23850bea58a6f21b4c2",
"images/2c80c02ad32812b6b5779216db6480ed69a26b2a.jpeg": "cb8e2c370de8602a9cc9c8b8e228d74f",
"images/189e8cd78ec487b5ac16aaf7139edbc90bffd359.jpeg": "13927621d38c3073f3c25a4923857cc8",
"images/3bcbd2cc0734ac40b8d4d6ac36de8f5c61fc569e.png": "6c4b9cdf5a3fcbab5ef9f2aed271ce21",
"images/a20c1b8702c0ad61db18dc73cb955c81ec18f78f.jpeg": "8f3603848a166d14f16757b7025be2fd",
"images/07d67bd95e83032256abb1e330b66aa245c71ab0.jpeg": "d7feffb988233429b410b60c9064e12c",
"index.html": "b284848b44e2bc779ef296a8cf89a305",
"/": "b284848b44e2bc779ef296a8cf89a305",
"404.html": "603a089184ff8eac1bb30a1b9ee1113b",
"favicon.png": "ae45dea70e6c64a1519909d37519ddb3",
"main.dart.js": "1b87fa661f2c6fbbb4e9de02d4fef334",
"manifest.json": "5725cc90c199f0ffa10d0f90b4e61f8d"};
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