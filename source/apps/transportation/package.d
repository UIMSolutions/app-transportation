module apps.transportation;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-transportation libraries
  import apps.transportation.controllers;
  import apps.transportation.views;
}

static this() {
  auto myApp = App("transportationApp", "apps/transportation");

  with (myApp) {
    importTranslations;
    addControllers([
      "trans.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("trans.index")),
      Route("/", HTTPMethod.GET, controller("trans.index"))
    );
  }

  AppRegistry.register("apps.transportation", myApp);
}