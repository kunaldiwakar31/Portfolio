'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/config": "ab3d7092752536c956468571159ef954",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "7bf1fcc5f411e5ad68c59b68661660ed",
".git/index": "9f51672a31340a8087a369d809f31cff",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/objects/1c/5f24dad551c1a595489db2e8982e9ec6401ad7": "304bbe424bb364519af44c610afebbce",
".git/objects/21/2a5546f65939d5667c2c80ac19b7da09a27723": "c6d4d0498b18d7f9b5ae196d16c0be7e",
".git/objects/2e/2db5887a07887483e42b84abc0bfeda7786921": "3031311782895ebcf41a717c09cd1fa0",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/3c/31c5bd7091d6f02572d7e51dcc96a3cd80c4d7": "2b202d30177fbb6ddf9cf680b011f71f",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/47/b3c5f76a8af32f6072498923bb5ba2a2f9267d": "c4c40dcd14fca7478c5bd15c4e14c568",
".git/objects/54/67be68a7d55e8cb08b245857d9d7300b59c623": "36637d06b891b41e609ce9542bef31de",
".git/objects/5b/1e5cb5a128ab699a4b4df237c87f842cfccbd7": "de8e512d7749610eaeedd991b0b0529e",
".git/objects/5e/b5bc2d0f1895659d7679cc1947615074eba91e": "65cd09fbe501e84b8b5d32f73bf15444",
".git/objects/60/766988b38a124e841c7c0d5195cfcfbff411ed": "fe08bc9cdffaa64911283bcd7b6652d8",
".git/objects/72/fcea90a0feac46eb31d93215accc1a4e414b9d": "6b55571a83d1ad5e7cbe07cb82ab900e",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/c0a76659999ff394d76bc875de63847010f1f2": "6d1a52281301dc6777ccac6c7183efb0",
".git/objects/91/0840bfcf6300a063e8ba053878bdea990af1ec": "5ec78e7926fae81ad4aa7133416ae786",
".git/objects/9c/e2cd9d0b44bceffa665e8a57551372e134440d": "79e57beaaab5e9f211c19a200c0f9bdd",
".git/objects/a4/415523993a44deacec4effde76ed82c64024a5": "14c0685c509478ba58ae8be1c8416979",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/735542bdc4c8ab7016990a499785727006b535": "c1aeb5d4cc1965dd7c85aa736df9ca72",
".git/objects/bb/511a8e886d7a1ff03a985e206877cb25e4f86d": "f46ccde6d34a866781ee5a8e86b63731",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/496562e5efeb2309e2f898c88ed83ab29a2311": "c7cf6231c44cd694668bb0bbbed5e325",
".git/objects/e2/7617b3102b0f03fdee0bbfbdceb67ee134179a": "642a9acd94deb4f6804beda754a12996",
".git/objects/e9/040d6403dfc03b1c76675ff56e5987abb589ff": "6d7f6d70ab213cb8dab687be41d29a87",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/102423e5926b99b023a7e88592cd4ae12089f8": "24284c71a31f843553a7ba8a616d7a1e",
".git/objects/ed/d774c4bc317e99eb554fea3a59089e7d30dfd1": "052216d80a1908eb70a4145d13049206",
"assets/AssetManifest.json": "7209283a72625afc21506016fe8f2401",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/images/aboutme_bg.png": "e7bae0ee97f815e94768c63c6b1fd7df",
"assets/images/chatting_app.jpg": "85f7f55c582f51cc111db5a1ceb8ae2e",
"assets/images/codecheftransparent.jpg": "b4c0de6af2c7b74557e85eca49fcba9c",
"assets/images/donorpatientImage.jpg": "5a7eaaf0469199b2e2897d22f296fb5c",
"assets/images/experienceimage.jpg": "6d883eb311c339c474a80841cbb9fcfd",
"assets/images/gfglogo.png": "e8e76cf9442127a4f6f8f83042eb63b0",
"assets/images/githublogo.png": "16c7976f113e87fd260f2167cbafbcae",
"assets/images/imagebackground.jpg": "79bf1af5467564480040db3ba33c1ae2",
"assets/images/leetcodetransparent.png": "274c8d2c47fefe66696fda6f36dcc457",
"assets/images/linkedlogotransparent.png": "3e120e339f38cf0165e99bba0981ea78",
"assets/images/profile_pic.jpg": "a80aa60038060bb88bb3fdf006619c2c",
"assets/images/rightimage.jpg": "54b353a006ec645037b00a167a50bb9c",
"assets/images/sideimage.jpg": "2930913a81d74a5fcaccbc5a7f672121",
"assets/images/sosimage.jpg": "b68e620379ddb6c67e67bc8a5e56c5a9",
"assets/NOTICES": "a410b4ba97b3c6f9d7be172ad1b87ce5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "fdb1def14e1f6faf533a0086bcfdb899",
"/": "fdb1def14e1f6faf533a0086bcfdb899",
"main.dart.js": "31a15d576cef0c5ccff86936814f2fdf",
"manifest.json": "5a2c0526f1fe73e6f211bc7a9d15c210",
"version.json": "426313f2f3133c2f20415344c4a22df3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
