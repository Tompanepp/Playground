// Add all operators to Observable
import 'rxjs/Rx';
import { HTTP_PROVIDERS } from '@angular/http';
import {TohComponent} from "./toh.component";
import {bootstrap} from "@angular/platform-browser-dynamic";

bootstrap(TohComponent, [HTTP_PROVIDERS]);
