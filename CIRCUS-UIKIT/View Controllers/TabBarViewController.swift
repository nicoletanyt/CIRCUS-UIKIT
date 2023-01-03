//
//  TabBarViewController.swift
//  CIRCUS-UIKIT
//
//  Created by NICOLE TAN YITONG stu on 3/1/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Defining the root view controllers
        let benefitsRVC = BenefitsViewController()
        let profileRVC = ProfileViewController()
        //Sets the titles of each view controller
        benefitsRVC.title = "Benefits"
        profileRVC.title = "Profile"
        //Styling -> So that the title looks better
        benefitsRVC.navigationItem.largeTitleDisplayMode = .always
        profileRVC.navigationItem.largeTitleDisplayMode = .always
        //Defining the navigation view controllers
        let benefitsNavVC = UINavigationController(rootViewController: benefitsRVC)
        let profileNavVC = UINavigationController(rootViewController: profileRVC)
        //Styles tab bar item
        benefitsNavVC.tabBarItem = UITabBarItem(title: "Benefits", image: UIImage(systemName: "arrow.3.trianglepath"), tag: 1)
        profileNavVC.tabBarItem = UITabBarItem(title: "profile", image: UIImage(systemName: "person.fill"), tag: 1)
        //Styling -> So that the title looks better
        benefitsNavVC.navigationBar.prefersLargeTitles = true
        profileNavVC.navigationBar.prefersLargeTitles = true
        //Set view controllers
        setViewControllers([benefitsNavVC, profileNavVC], animated: false)
    }
}
