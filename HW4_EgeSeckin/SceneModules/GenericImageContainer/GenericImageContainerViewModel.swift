//
//  GenericImageContainerViewModel.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation
import UIKit

class GenericImageContainerViewModel {
    
    private let data: GenericContainerData
    
    init(data: GenericContainerData) {
        self.data = data
    }
    
    func getImage() -> UIImage {
        return data.getImage()
    }
    
    func getIndex() -> Int {
        return data.pageIndex
    }
    
}
