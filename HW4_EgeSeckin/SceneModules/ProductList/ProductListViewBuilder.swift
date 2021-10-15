//
//  CharacterListViewBuilder.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import UIKit

class ProductListViewBuilder {
    
    class func build() -> UIViewController {
        let productListFormatter = ProductListDataFormatter()
        let manager = ProductListOperationsManager.shared
        let viewModel = ProductListViewModel(formatter: productListFormatter, operationManager: manager)
        let viewController = ProductListViewController(viewModel: viewModel)
        return viewController
    }
    
}
