//
//  HeroDetailsViewController.swift
//  HotSHelper
//
//  Created by Nathaniel Warner on 4/4/18.
//  Copyright © 2018 Nathaniel Warner. All rights reserved.
//

import Foundation
import UIKit

class HeroDetailsViewController: UIViewController {
    @IBOutlet weak var heroFullImageView: UIImageView!
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroTitleLabel: UILabel!
    @IBOutlet weak var heroUniverseImageView: UIImageView!
    @IBOutlet weak var heroRoleImageView: UIImageView!
    @IBOutlet weak var heroDifficultyImageView: UIImageView!
    @IBOutlet weak var heroDamageImageView: UIImageView!
    @IBOutlet weak var heroUtilityImageView: UIImageView!
    @IBOutlet weak var heroSurvivabilityImageView: UIImageView!
    @IBOutlet weak var heroComplexityImageView: UIImageView!
    @IBOutlet weak var heroDescriptionLabel: UILabel!
    var hero: Hero!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        heroFullImageView.image = UIImage(named: hero.fullImage)
        heroNameLabel.text = hero.name
        heroTitleLabel.text = hero.title
        heroUniverseImageView.image = UIImage(named: hero.universe.rawValue)
        heroRoleImageView.image = UIImage(named: hero.role.rawValue)
        heroDifficultyImageView.image = UIImage(named: hero.difficulty.rawValue)
        heroDamageImageView.image = #imageLiteral(resourceName: "damage")
        heroUtilityImageView.image = #imageLiteral(resourceName: "utility")
        heroSurvivabilityImageView.image = #imageLiteral(resourceName: "survivability")
        heroComplexityImageView.image = #imageLiteral(resourceName: "complexity")
        heroDescriptionLabel.text = hero.description
        
    }
}
