//
//  CharacterListOperationsProtocol.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation
import RxSwift

protocol ProductListOperationsProtocol {
    
    func getProductListData()
    
    func subscribeDataPublisher(with completion: @escaping ProductListResultBlock) -> Disposable
    
    func subscribeDataFlow(with completion: @escaping (Bool) -> Void) -> Disposable
    
}
