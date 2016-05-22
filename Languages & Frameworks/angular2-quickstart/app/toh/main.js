"use strict";
// Add all operators to Observable
require('rxjs/Rx');
var http_1 = require('@angular/http');
var toh_component_1 = require("./toh.component");
var platform_browser_dynamic_1 = require("@angular/platform-browser-dynamic");
platform_browser_dynamic_1.bootstrap(toh_component_1.TohComponent, [http_1.HTTP_PROVIDERS]);
//# sourceMappingURL=main.js.map