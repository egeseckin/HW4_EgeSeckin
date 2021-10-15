//
//  CharacterListViewState.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation

typealias ProductListStateBlock = (ProductListViewState) -> Void

enum ProductListViewState {
    
    case loading
    case done
    case failure
    
}
