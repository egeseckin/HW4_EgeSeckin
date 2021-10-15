//
//  ItemTableViewCellData.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//


import Foundation

class ItemTableViewCellData: GenericDataProtocol {
    
    private(set) var imageData: CustomImageViewComponentData
    private(set) var cellInfo: LabelPackComponentData
    
    init(imageData: CustomImageViewComponentData,
         cellInfo: LabelPackComponentData) {
        self.imageData = imageData
        self.cellInfo = cellInfo
    }
    
}
