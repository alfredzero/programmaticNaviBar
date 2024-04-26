//
//  UserTabBarController.swift
//  programmticNavBar
//
//  Created by Alfredo Amezcua on 4/25/24.
//

import UIKit

class UserTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabs()
    }
    
    
    private func configureTabs() {
        let viewC = HomeViewController()
        let viewC2 = SearchViewController()
        let viewC3 = ProfileViewController()
        
        //palce image for tab
        
        viewC.tabBarItem.image = UIImage(systemName: "house")
        viewC2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        viewC3.tabBarItem.image = UIImage(systemName: "person")
        
        
        // set Title
        viewC.title = "Base"
        viewC2.title = "Look Up"
        viewC3.title = "Profile"
        
        let navibar1 = UINavigationController(rootViewController: viewC)
        let navibar2 = UINavigationController(rootViewController: viewC2)
        let navibar3 = UINavigationController(rootViewController: viewC3)
        
        tabBar.tintColor = .systemGray
        tabBar.backgroundColor = .systemGray2
        
        setViewControllers([navibar1, navibar2, navibar3], animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
