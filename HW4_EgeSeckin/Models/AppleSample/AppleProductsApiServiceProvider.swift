//
//  MarvelCharactersApiServiceProvider.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class AppleProductsApiServiceProvider: ApiServiceProvider<BaseRequest> {
    
    static let url = "https://api-mobilespecs.azharimm.site/v2/brands/apple-phones-48"
    
    init() {
        super.init(method: .get, baseUrl: Self.url)
    }
    
}
