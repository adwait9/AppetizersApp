//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Adwait Barmase on 16/04/24.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
     
//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizer { result in
//            DispatchQueue.main.async { [self] in
//                isLoading = false
//                switch result {
//                case .success(let appetizers) :
//                    self.appetizers = appetizers
//                case .failure(let error) :
//                    switch error {
//                    case .invalidData :
//                        alertItem = AlertContext.invalidData
//                    case .invalidURL:
//                        alertItem = AlertContext.invalidURL
//                    case .invalidResponse:
//                        alertItem = AlertContext.invalidResponse
//                    case .unableToComplete:
//                        alertItem = AlertContext.unableToComplete
//                    }
//                }
//            }
//           
//        }
//    }
    func getAppetizers() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizer()
                isLoading = false
            } catch {
                if let apError = error as? APError {
                    switch apError {
                        
                    case .invalidData :
                        alertItem = AlertContext.invalidData
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    //generic error
                    alertItem = AlertContext.invalidResponse
                    
                }
                
                isLoading = false
            }
        }
        
    }
}
