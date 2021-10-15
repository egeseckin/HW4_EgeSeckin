//
//  MarvelCharactersResponse.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation

// MARK: - CharacterDataResponse
public struct ProductDataResponse: Codable {
    public let data: ProductListData
    
    public init(data: ProductListData) {
        self.data = data
    }
    
}

// MARK: - DataClass
public struct ProductListData: Codable {
    public let phones: [ProductData]
    
    public init(phones: [ProductData]) {
        self.phones = phones
    }
}

// MARK: - Result
public struct ProductData: Codable {
    public let phone_name: String
    public let image: String
    public let slug: String?
    
    enum CodingKeys: String, CodingKey {
        case phone_name
        case image
        case slug
    }
    
    public init(phone_name: String, image: String, slug: String?) {
        self.phone_name = phone_name
        self.image = image
        self.slug = slug
    }
}
