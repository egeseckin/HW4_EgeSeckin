//
//  GenericImageContainerViewBuilder.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation
import UIKit

class GenericImageContainerViewBuilder {
    
    class func build(with data: GenericContainerData) -> UIViewController {
        let viewModel = GenericImageContainerViewModel(data: data)
        let viewController = GenericImageContainer(viewModel: viewModel)
        return viewController
    }
    
}
