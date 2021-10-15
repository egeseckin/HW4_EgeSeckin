//
//  CharacterListDataFormatterProtocol.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation

protocol ProductListDataFormatterProtocol {
    
    func getItem(from data: ProductData) -> ItemTableViewCellData
    
}
