//
//  CharacterListViewModel.swift
//  HW4_EgeSeckin
//
//  Created by Ege Seçkin on 14.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage
import RxSwift

class ProductListViewModel {
    
    deinit {
        print("DEINIT CharacterListViewModel")
    }
    
    private let disposeBag = DisposeBag()
    
    private let formatter: ProductListDataFormatterProtocol
    private let operationManager: ProductListOperationsProtocol
    
    private var data: ProductDataResponse?
    private var state: ProductListStateBlock?
    
    init(formatter: ProductListDataFormatterProtocol,
         operationManager: ProductListOperationsProtocol) {
        self.formatter = formatter
        self.operationManager = operationManager
        subscribeOperationManagerPublisher()
    }
    
    func subscribeState(completion: @escaping ProductListStateBlock) {
        state = completion
    }
    
    func getCharacterList() {
        state?(.loading)
        operationManager.getProductListData()
    }
    
    private func dataHandler(with response: ProductDataResponse) {
        data = response
        state?(.done)
    }
    
    private func subscribeOperationManagerPublisher() {
        operationManager.subscribeDataPublisher { [weak self] result in
            switch result {
            case .failure(let error):
                print("error : \(error)")
            case .success(let response):
                self?.dataHandler(with: response)
            }
        }.disposed(by: disposeBag)
    }
    
}

// MARK: - ItemListProtocol
extension ProductListViewModel: ItemListProtocol {
    
    func askNumberOfSection() -> Int {
        return 1
    }
    
    func askNumberOfItem(in section: Int) -> Int {
        guard let dataUnwrapped = data else { return 0 }
        return dataUnwrapped.data.phones.count
    }
    
    func askData(at index: Int) -> GenericDataProtocol? {
        guard let dataUnwrapped = data else { return nil }
        return formatter.getItem(from: dataUnwrapped.data.phones[index])
    }
    
}
