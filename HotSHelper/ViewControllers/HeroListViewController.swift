//
//  HeroListViewController.swift
//  HotSHelper
//
//  Created by Nathaniel Warner on 4/1/18.
//  Copyright © 2018 Nathaniel Warner. All rights reserved.
//

import Foundation
import UIKit

class HeroListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var heroesTableView: UITableView!
    var heroes: [Hero]!
    override func viewDidLoad() {
        super.viewDidLoad()
        heroesTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(heroes.count)
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let heroCell = tableView.dequeueReusableCell(withIdentifier: "heroCell") as! HeroTableViewCell
        let hero = heroes[indexPath.row]
        heroCell.heroNameLabel.text = hero.name
        heroCell.heroTitleLabel.text = hero.title
        heroCell.heroIconImageView.image = UIImage(named: hero.image)
        heroCell.heroUniverseImageView.image = UIImage(named: hero.universe.rawValue)
        print(hero.universe.rawValue)
        heroCell.heroRoleImageView.image = UIImage(named: hero.role.rawValue)
        //print(heroes[indexPath.row].name)
        return heroCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        heroes = [Hero(name: "Alexstrasza", title: "The Life Binder", description: "Queen of Dragons", role: Hero.heroRole.support, universe: Universe.warcraft, difficulty: Hero.heroDifficulty.medium, image: "alexstraszaIcon", heroDamage: 3, heroUtility: 6, heroSurvivability: 4, heroComplexity: 6), Hero(name: "Diablo", title: "Lord of Terror", description: "The Prime Evil", role: Hero.heroRole.warrior, universe: Universe.diablo, difficulty: Hero.heroDifficulty.medium, image: "diabloIcon", heroDamage: 5, heroUtility: 7, heroSurvivability: 9, heroComplexity: 5), Hero(name: "Nova", title: "Dominion Ghost", description: "Ghost of Terran Dominion", role: Hero.heroRole.assassin, universe: Universe.starcraft, difficulty: Hero.heroDifficulty.medium, image: "novaIcon", heroDamage: 10, heroUtility: 4, heroSurvivability: 2, heroComplexity: 5), Hero(name: "Tracer", title: "Agent of Overwatch", description: "Lena Oxton", role: Hero.heroRole.assassin, universe: Universe.overwatch, difficulty: Hero.heroDifficulty.hard, image: "tracerIcon", heroDamage: 8, heroUtility: 2, heroSurvivability: 5, heroComplexity: 8), Hero(name: "The Lost Vikings", title: "Lost Adventurers", description: "Polar bear wrestlers", role: Hero.heroRole.specialist, universe: Universe.classic, difficulty: Hero.heroDifficulty.veryHard, image: "theLostVikingsIcon", heroDamage: 7, heroUtility: 5, heroSurvivability: 6, heroComplexity: 10)]
        heroesTableView.delegate = self
        
    }
}
