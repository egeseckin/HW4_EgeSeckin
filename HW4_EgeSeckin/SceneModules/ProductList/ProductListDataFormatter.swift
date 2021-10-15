//
//  CharacterListDataFormatter.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation

class ProductListDataFormatter: ProductListDataFormatterProtocol {
    
    func getItem(from data: ProductData) -> ItemTableViewCellData {
        return ItemTableViewCellData(imageData: CustomImageViewComponentData(imageUrl:  data.image), cellInfo: LabelPackComponentData(title: data.phone_name, subTitle: getDescription(from: data.slug)))
    }
    
    private func getDescription(from rawValue: String?) -> String {
        guard let value = rawValue, !value.isEmpty else {
            return "No Data"
        }
        return value

    }
    

    
}
