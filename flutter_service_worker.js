'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "c5e1670a76fa30eb5c8cb1969cb58536",
".git/config": "e25c7a52a235b7d08d1fe461f2daa8ed",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "4175457fc15653dbd7372f39e3208717",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/index": "755570f8baa61bb42140a0c776325f68",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "7c9b346fc85f8454d5472f8ecab7be17",
".git/logs/refs/heads/main": "a06d38606e3c0a2f3303cb4064efff67",
".git/logs/refs/remotes/origin/add-license-1": "5c3278f010bb5f69345fc2767e67b770",
".git/logs/refs/remotes/origin/main": "9230c59f049fa7c707a52fc4568b1e20",
".git/logs/refs/remotes/origin/master": "f4c2c316defbfff57dcad01a47c92184",
".git/objects/04/ba38255578de1c537c2ca3d7843aaf2d1aadcf": "4a7df696135aa6b9ecc8f88b32832fe5",
".git/objects/08/405b24e300956c27280f4ca1a091ac213713c2": "4c8ab55ec9febb0b426d529004ceda41",
".git/objects/12/f10c53d59e63f40565e8974344341316a26c3d": "0a1bf96751c176507698fd6d4fbbc7ac",
".git/objects/16/645d9659bb8e276e28d09a96c7d6e66b6b6999": "e459a1d55294ad25e7c2df0fb3087009",
".git/objects/27/8db38ce53d156f4935f06805ccc9c0488e3dff": "7b83f0539ccbab68ef6ec9430a61bf80",
".git/objects/2d/1f4e9f565633a0e3485d8f94b62d0630c53490": "a632a90c39c9da1e0c9b8ab824d12834",
".git/objects/2e/582e2ceda663e749237597af5cc5a412af91b3": "4583d36833b3d7d95b8d5568bc6d3f9c",
".git/objects/2e/6dc1930fbc0d8c186a66e6dbed11d6128a00e7": "daba4759ce27094cc512e3d6e0570376",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/35/fd8a112126d56970ad1461b3a9c52a7f2adb63": "bfec5034672b92c7af9895095e703812",
".git/objects/37/3d6368957b6e600f67e554bfe08d8ff667151c": "19a0b1af248bc3fdc16a87dbf7ed65b1",
".git/objects/3b/9ca0fdb650bd170dd4087fe4bd99668a2c50c9": "36109057a0ba5487e47f880fa21c43ef",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/47/b3c5f76a8af32f6072498923bb5ba2a2f9267d": "c4c40dcd14fca7478c5bd15c4e14c568",
".git/objects/48/6ce2fc8f67cf3a1325c49a84201e800e12e6e8": "16df0da0ad2fa386e403b3c1c61b2e57",
".git/objects/49/8609d5b512e44524d7b5eb25103d2414d6a352": "737433f833741eea24e9390106b18c1d",
".git/objects/4e/e4211fe4ce6cde4d69b38fcdcd0d02a839b81c": "8fd311a17897f2307e69e62397a26e0b",
".git/objects/53/9a7bd60137434770ed398999be3898bd7946a5": "8e6ed9a35253318e0ecd5718081ed9bc",
".git/objects/55/2cef618e7aa445146613dc14b260ece2bf57f3": "35c73ba62a8de66570db8d4e39b392d5",
".git/objects/57/04e4a07f9c58551aeb60ce44dce641b1e576a2": "f2dcbba7bef722146c46acd6c071c84d",
".git/objects/5b/9f1c55bfc40572e66314ddc73b7955b9a91df4": "125aefde21b32d161b9ffe0f45093036",
".git/objects/67/530d46ab4c1a21f47e7274cc7df711cd8bf51c": "060e99a44d142d44e80320153762b2ff",
".git/objects/74/fcb63c27406b8aa4338d1340f38551a58d2865": "9b1c5104954d1df60440ca5813d96516",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/79/ff1a8fb114848d58a32af18f785b656524982f": "f1a3acfcf9bba193b695f8ee058126a8",
".git/objects/7c/cc5ff1980153a95e78280b86dc9ed9fdb3e509": "37a6864f5ce73f0051c7d326c9372474",
".git/objects/7f/af8e6655a6481c56613b60e7390957a843cac9": "a9b80cd0a959718be850216af21bce40",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/86/146f86c0a138a01396df975c28a9ae8fca3e37": "29043ff8978d52e6473496bfb8ebd14b",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/85f9b202bf841bebb304d5a9ab9c93b1d723b7": "bff9e1c858ff260fa33f004af43e1bdd",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/009b70de98a6ba208316cf03ddcbdea3e91c59": "65c28da0f0978c9da40c022d35622321",
".git/objects/8c/5d19969f3254260fc8aecf5543b36c11a80808": "cb490a9ca9ae48e1fd3ad1a4b6bada61",
".git/objects/9f/30da9a96f55e429a825d2cdc4af1589d4f1f4a": "95a66d6f2ad5a08a91df1394f7c40ee6",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a5/a3f0ad4c0582c2cb1e449e1b09e16454eec1f0": "98bfca163e65ca43c2da76a03a0ae5db",
".git/objects/a7/9c875c1c4bc5d5444cb5280d6591f8c79f8f6e": "4c59a69e03fb6e30adcce72a4bd5b7d5",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a9/23e624357e46faccaa59093b0dbe75ec2bfcb6": "ea1271a323bca2b60eac9adb42e4443c",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b3/2c1aa69c6ce76d99f65ae81caaf5a097a88d85": "461456b7f1e74e6430cd484a55612ff2",
".git/objects/b3/704b2b0b292a223b245d740a5e6771ef99d7f7": "7be6fdacb450d375125d9c9a5ab51a7d",
".git/objects/b5/c42c960f7183f6fec67d35c09b52ae98734585": "3c3f23ab650e8903ffd2a8e28f554a61",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/37cdfcf1a671e3807e8efb004f7f69bdddf297": "d0753addd1064380b6e52a5f6f49329f",
".git/objects/c5/c1d4c3aabf9ceb71043e307f968284345dd433": "6e9a10aed1f8faba4bb330ff3191c136",
".git/objects/c8/c53fa9f100585ddf30b3914f4cd35b0335fe37": "8a8d34cdb6b1f46de1b1f3d36a13fe4a",
".git/objects/cd/9948e32c0bc996e8c68e91804a798e3c7ab83b": "c25fa39ea473b342e3fd88a6d180c957",
".git/objects/d1/c523cd5c7c21d041cfd9858847703578334e2d": "a41be2a916ef550360fce5e6136b13dd",
".git/objects/d8/93029b5e3772f4a95f570af58ea2f4b89ba9db": "35c48d6b3387423735f1c32b44f5ca56",
".git/objects/d9/b54c167b5f2f65dec8f050788bac68b984c510": "c09cef5fb23b97a8a1318f0b8e1a8165",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/147cd7ae40d5915f5b18ba7b77717431e705f8": "5019e0b0626246f41ae3032e99cbc9c0",
".git/objects/ed/0035313c29815a138a55a2478f1a69cbc79ed1": "3b747e5bbb20cab0c250c9657776d49a",
".git/objects/ed/a92504ae2b8f99e865c9b94348009e0655df30": "c10ee8f119aa2e58ed5517a20660cb12",
".git/objects/ee/6dbb1e1362e615b23193a87033e73a34581800": "cd72255567cbf1fd587291a2e2eb496a",
".git/objects/ef/6b2a1788cd4144d072d70cb50c43bcb5c11dd5": "8fd13d12a413d85e4ca666a4a247701e",
".git/objects/fe/240db18667064757c47ce686e5d6007f6de8f0": "602e37400bc6c580a6aa23c23bad0a1a",
".git/objects/pack/pack-fcc3dc8ddcd2f889bdd141c4bcde3edeecbbc6cd.idx": "4d29c6bf4031b58005f7d0d5e258dc91",
".git/objects/pack/pack-fcc3dc8ddcd2f889bdd141c4bcde3edeecbbc6cd.pack": "0fb0627e64ef38a664afe625e1526e02",
".git/ORIG_HEAD": "48900357df348539b1cd17e745e20da9",
".git/refs/heads/main": "424253f5f308739c3474a50e64fa53d6",
".git/refs/remotes/origin/add-license-1": "5f29d58ad3dc40caee302a0f5ee12b0c",
".git/refs/remotes/origin/main": "424253f5f308739c3474a50e64fa53d6",
".git/refs/remotes/origin/master": "08c6b2b8d96a25525fb7b53d55a962e0",
"assets/AssetManifest.json": "0eea4d3e7cd8640fc2f6329a177d5539",
"assets/assets/apilf_logo.png": "61c792f1cc181e455d1645369f195770",
"assets/assets/apilf_ss.gif": "3f362a9afac596e700c3fd495ff5c3a5",
"assets/assets/aresn_logo.png": "98aeed5b5b27f4d30aa92b6209bb0818",
"assets/assets/aresn_ss_1.png": "e1239fc858307245b933e6993243b562",
"assets/assets/aresn_ss_2.png": "d7f56499d52f6f7e19d3863abe2dab3d",
"assets/assets/aresn_ss_3.png": "df6e7e4f2a5931eeb7ab8c392c9007c9",
"assets/assets/aresn_ss_4.png": "68593913f2f57e4d7b9daf2fde646318",
"assets/assets/fnote_logo.png": "6c649f0d68beb3de2a785c02e3c5dc66",
"assets/assets/fnote_ss.png": "27da521c55c55697b160f760ec77f742",
"assets/assets/picture_1.png": "af867c6d4178ec71ed2970ea6d925d61",
"assets/assets/picture_2.png": "e4f3fd2e962ebf35514021f27fc66f85",
"assets/assets/picture_3.png": "291db1c9de33e5a606fae60cfceae959",
"assets/assets/picture_4.png": "eec8a1af81a86825733ba931cb0f4102",
"assets/assets/wobboders_logo.png": "2be0dbe421dc7247dd6900c52ca77c0f",
"assets/assets/wobboders_ss_1.png": "2f7acbe2d1774e37c91f2af8f024d32e",
"assets/assets/wobboders_ss_2.png": "ce9929df2bbdd52f69771794b35a4037",
"assets/assets/wobboders_ss_3.png": "8421904e9486b563e47f138b5b81dabf",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "3c07da834011727043f580bc1927635f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.ico": "d4c632e4cf61f9408b63cb0819e72f75",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192-f.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-192.png": "39cbdc5586e5f22b42095e84b527b81f",
"icons/Icon-512-f.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-512.png": "a589144680b0f3a1afb28da56f40cd6d",
"index.html": "98cba2820358f2a9088672cbe71b126c",
"/": "98cba2820358f2a9088672cbe71b126c",
"main.dart.js": "913beed1c0dfc765cba0b0efef98d487",
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
