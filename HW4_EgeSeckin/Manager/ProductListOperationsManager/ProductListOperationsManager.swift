//
//  CharacterListOperationsManager.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage
import RxSwift

typealias ProductListResult = Result<ProductDataResponse, ErrorResponse>
typealias ProductListResultBlock = (Result<ProductDataResponse, ErrorResponse>) -> Void

class ProductListOperationsManager: ProductListOperationsProtocol {
    
    public static let shared = ProductListOperationsManager()
    
    private init() { }
    
    private let dataPublishSubject = PublishSubject<ProductListResult>()
    private let dataFlowSubject = PublishSubject<Bool>()
    
    // MARK: - Public Methods
    func getProductListData() {
        fireApiCall(with: apiCallHandler)
    }
    
    func subscribeDataPublisher(with completion: @escaping ProductListResultBlock) -> Disposable {
        return dataPublishSubject.subscribe(onNext: completion)
    }
    
    func subscribeDataFlow(with completion: @escaping (Bool) -> Void) -> Disposable {
        return dataFlowSubject.subscribe(onNext: completion)
    }
    
    // MARK: - Private Methods
    private func fireApiCall(with completion: @escaping ProductListResultBlock) {
        
        dataFlowSubject.onNext(false)
        
        do {
            let urlRequest = try AppleProductsApiServiceProvider().returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("error : \(error)")
        }
        
    }
    
    // MARK: - CallBack Listener
    private lazy var apiCallHandler: (Result<ProductDataResponse, ErrorResponse>) -> Void = { [weak self] result in
        // to show how to handle error .....
        self?.dataPublishSubject.onNext(result)
        self?.dataFlowSubject.onNext(true)

    }
    
}
