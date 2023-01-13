'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "ee4463f4e05afff7719fd0d113bdf102",
"index.html": "9aca64064207fc3443fbb1e0f66d0484",
"/": "9aca64064207fc3443fbb1e0f66d0484",
"main.dart.js": "06285f03b5e14209e8620a64dc863746",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "ce5bd1a8ec016a84d48c7dcd58ca9b7e",
"assets/AssetManifest.json": "4deb179166ef7fa19bfae6ef8d0a664f",
"assets/NOTICES": "d8cb57254f44f7f21e45c3fd74987e44",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dd3c4233029270506ecc994d67785a37",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "613e4cc1af0eb5148b8ce409ad35446d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d1722d5cf2c7855862f68edb85e31f88",
"assets/shaders/ink_sparkle.frag": "9238e2edf5919c17cfd01412a16b92d1",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/ICON_GOOGLE@2x.png": "5e5edd1f1b3f6c1770533a6c23bc6856",
"assets/assets/images/icici_Bank_onLight@1x.png": "87be9c486a839dd67eed2d5778c3afff",
"assets/assets/images/emi-image.png": "e0621b2fd3a83014c9a78f450560d05b",
"assets/assets/images/icon_bankCards@2x.png": "735296e8091c79ae7b4a928360ea3711",
"assets/assets/images/grid_card.png": "c1bbe704f9f47d196e46ba79e64c4b74",
"assets/assets/images/01.png": "3c47e42d68245e274cfc640584c8363c",
"assets/assets/images/icon_goldAlt@2x.png": "c227453c47c7ede785e30a68b19e2630",
"assets/assets/images/03.png": "5bf30980d01e1cd8a9dcc2f44de77934",
"assets/assets/images/logo_apple@2x.png": "7f6573626ed7d80178c3b3d237870018",
"assets/assets/images/02.png": "9c7857d80146ce197be889584f761e91",
"assets/assets/images/06.png": "a05de3f940c31494c2e1767b549d784a",
"assets/assets/images/07.png": "155fc743b5fcda439dc7a5a86dfff0ef",
"assets/assets/images/11.png": "bdaa0591658ea4a227995a6a337c9220",
"assets/assets/images/05.png": "460725b32d03adfa1c21040a20b067da",
"assets/assets/images/app_launcher_icon.png": "8de6fb6dde9d19357938d78c1406c586",
"assets/assets/images/04.png": "af476259f50a23edb9c1b8f28dcd1932",
"assets/assets/images/10.png": "5ae34b1a5623695217e440161b62b2ba",
"assets/assets/images/ICON_APPLE@2x.png": "f308eeefeee26d4b402eef3baa1bc2ae",
"assets/assets/images/09.png": "55f51696c3a2d0a5263d54c8427a31d5",
"assets/assets/images/LOGO_ZOMATO@2x.png": "4c63b53f97cf07ad547a680bf4fae94d",
"assets/assets/images/08.png": "2aab87e99b0b2cead8b9e73fef125321",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/logo_Bank_aloneBG@1x.png": "97e0eb053cf9b273717cd3a48c7f7cd2",
"assets/assets/images/LOGO_SAMSUNG@2x.png": "674c839a4a0bbaec096208d0205fcfed",
"assets/assets/images/loan-cc.png": "dfe5f42ec5efd8140f0e1f6d74493cde",
"assets/assets/images/ICON_AMAZON@2x.png": "d99e3781bb143609eca05d5c76b954b2",
"assets/assets/images/handpicked-reward-ponts.png": "2c31ef21f165d3fc39b7cfafead10688",
"assets/assets/images/ICON_META@2x.png": "9a70f6e56dd696d9bd7cbad0731b6970",
"assets/assets/images/visa-logo.png": "fdabc70aa6ab121bfac7b48af833183e",
"assets/assets/images/icici_Bank_onDark@1x.png": "d3a12942e91c4c5452741e2bcd83e10b",
"assets/assets/images/LOGO_CROMA@2x.png": "c804bb292fb5967fe02135c85b4ab243",
"assets/assets/images/rewards-points.png": "83cc9f906415ddeeb6343dc448547f8a",
"assets/assets/images/iplay-logo.png": "2e953d16c2de056b19d880d192a85d08",
"assets/assets/lottie_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
