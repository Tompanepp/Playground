import {HeroService} from "./hero.service";
import { OnInit } from '@angular/core';
import {Hero} from "../hero";

export class HeroListComponent implements OnInit {
    
    constructor (private heroService: HeroService) {}
    
    errorMessage: string;
    heroes:Hero[];
    
    ngOnInit() { this.getHeroes(); }
    
    getHeroes() {
        this.heroService.getHeroes()
            .subscribe(
                heroes => this.heroes = heroes,
                error =>  this.errorMessage = <any>error);
    }
    
    addHero (name: string) {
        if (!name) {return;}
        this.heroService.addHero(name)
            .subscribe(
                hero  => this.heroes.push(hero),
                error =>  this.errorMessage = <any>error);
    }
}
