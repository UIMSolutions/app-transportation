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
  AppRegistry.register("apps.transportation",  
    App("transportationApp", "/apps/transportation")
      .importTranslations()
      .addRoutes(
        Route("", HTTPMethod.GET, IndexPageController),
        Route("/", HTTPMethod.GET, IndexPageController)
      )
    );
}