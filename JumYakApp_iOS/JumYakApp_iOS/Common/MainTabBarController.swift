//
//  MainTabBarController.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/28.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController{
    
    private lazy var firstViewController: UIViewController = {
        let vc = TotalViewController()
        let tabBarItem = UITabBarItem(title: "전체", image: UIImage(systemName: "house"), tag: 0)
        vc.tabBarItem = tabBarItem
        return vc
    }()
    
    private lazy var secondViewController: UIViewController = {
        let vc = LunchViewController()
        let tabBarItem = UITabBarItem(title: "점심", image: UIImage(systemName: "house"), tag: 1)
        vc.tabBarItem = tabBarItem
        return vc
    }()
    
    private lazy var thirdViewController: UIViewController = {
        let vc = DinnerViewController()
        let tabBarItem = UITabBarItem(title: "저녁", image: UIImage(systemName: "house"), tag: 2)
        vc.tabBarItem = tabBarItem
        return vc
    }()
    
    private lazy var fourthViewController: UIViewController = {
        let vc = MeetingsViewController()
        let tabBarItem = UITabBarItem(title: "미팅", image: UIImage(systemName: "house"), tag: 3)
        vc.tabBarItem = tabBarItem
        return vc
    }()
    
    private lazy var fifthViewController: UIViewController = {
        let vc = ShoppingViewController()
        let tabBarItem = UITabBarItem(title: "샵", image: UIImage(systemName: "house"), tag: 4)
        vc.tabBarItem = tabBarItem
        return vc
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(red: 253/255.0, green: 76/255.0, blue: 150/255.0, alpha: 1.0)
        self.tabBar.barTintColor = .white
        self.tabBar.unselectedItemTintColor = UIColor(red: 100/255.0, green: 76/255.0, blue: 0/255.0, alpha: 1.0)
        
        let nav0 = UINavigationController(rootViewController: firstViewController)
        let nav1 = UINavigationController(rootViewController: secondViewController)
        let nav2 = UINavigationController(rootViewController: thirdViewController)
        let nav3 = UINavigationController(rootViewController: fourthViewController)
        let nav4 = UINavigationController(rootViewController: fifthViewController)
        
        setViewControllers([nav0, nav1, nav2, nav3, nav4], animated: true)
        
        
    }
    
    
    
    
}
