//
//  MainViewBuilder.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import UIKit

class MainViewBuilder {
    
    class func build() -> UIViewController {

        let viewModel = MainViewModel()
        let viewController = MainViewController(viewModel: viewModel)
        let navigationViewController = UINavigationController(rootViewController: viewController)
        viewController.title = "Menu"
        viewController.navigationController?.setNavigationBarHidden(true, animated: false)
        
        let appearance = UINavigationBarAppearance()
        //appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .black

        return navigationViewController

    }
    
}
