'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "f679930b9b66de7722fc18f4431ff30d",
"version.json": "0a7ae6ec75efcd88ce45d42551ce0f4a",
"index.html": "ec12d30f9868a16e3299bd7f71971b77",
"/": "ec12d30f9868a16e3299bd7f71971b77",
"main.dart.js": "bf1154f41fda108a2d33a6648d7951a0",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "8de258e8ee45d0a173d09451319470bc",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "267272ad776b2141dba0b2ee66d44c75",
"assets/AssetManifest.json": "f27770e404da23196153c07681cd2fff",
"assets/NOTICES": "9a1e244132e2e2e7f0a06e22b35f154b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "4a30c69e7d5085d7588aca32e60214d5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "ed21c78ee5a187a938a52d353d99f1fb",
"assets/fonts/MaterialIcons-Regular.otf": "e2eee3c340e6bdd8583c45bc51454309",
"assets/assets/images/idcard.png": "a3c7cd2f8dc7e86060ed3bb2311ea9f1",
"assets/assets/images/full_logo.png": "85f25eeb5130e7d06187165de56730a9",
"assets/assets/images/avatar.png": "8c43db30fdfd7a19f0747dcafc38b154",
"assets/assets/images/user1.png": "058aba03ba0078aaf65c33b1edb276ac",
"assets/assets/images/logo.png": "8de258e8ee45d0a173d09451319470bc",
"assets/assets/images/avatar2.png": "77ad6ce761f1aaa57cc1a81e88e8b2fd",
"assets/assets/images/fruit.png": "c4ae33847d1d8f2b431afbb5b6947b33",
"assets/assets/images/auth_farmer_image.jpg": "df9e0d9328872f4b614fba9ff0721826",
"assets/assets/icons/user.svg": "4c7a79556c27333822bd1ea9325edfce",
"assets/assets/icons/logout.svg": "7f2a66c961f99e018e3aabfd642fa083",
"assets/assets/icons/reports.svg": "79012db8c91bd3859f4a8d5e95417a1a",
"assets/assets/icons/doubleUser.svg": "53f814796a1ad5379a1e43a3e322cdea",
"assets/assets/icons/cart.svg": "4a987f6ba5d1c7f0179e7f654bcb77b2",
"assets/assets/icons/sales.svg": "560a7486adcf86fb93962c279c378609",
"assets/assets/icons/arrow.png": "dd1a5bb394f93028377b209c8761de65",
"assets/assets/icons/dashboard.svg": "c3892dc5d0630b8042c9dcea4ce8f01e",
"assets/assets/icons/close.svg": "4a56f4b55541c0792c3f423df290ff96",
"assets/assets/icons/crossCircle.png": "4b3b12378db732c93d7dba9b98b7091c",
"assets/assets/icons/chat.svg": "52e8b9cff5b75fa3377790b7cb6518d2",
"assets/assets/icons/notification.svg": "2478f8a2581f6505617f154c5b52abc5",
"assets/assets/icons/cash.svg": "56e82994f8b1b9a42fa41c80525b152c",
"assets/assets/icons/delete.svg": "d7db7cbe1df468ff3c36744ee6c76cb5",
"assets/assets/icons/eye.svg": "fef8bd8fa0d26f5ae3a93acfa79879cb",
"assets/assets/icons/employe.svg": "b6292754433356eaccda1d3a9d0cf5dd",
"assets/assets/icons/sendIcon.png": "50680940dfef4967f17986122f6369fc",
"assets/assets/icons/star.png": "9121ee9ca4feecbc91e0af40d327f0ce",
"assets/assets/icons/filter.svg": "f3029719b1387c169404083671a48070",
"assets/assets/translations/ar-SA.json": "c54c0506ee780c51a4fac3799975aa45",
"assets/assets/translations/en-US.json": "f447943092c39c68f9da4e7a047f92e2",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
