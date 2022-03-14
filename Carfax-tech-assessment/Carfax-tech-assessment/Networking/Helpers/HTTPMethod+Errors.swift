//
//  HTTPMethod.swift
//  Carfax-tech-assessment
//
//  Created by William Shillingford on 3/13/22.
//

import Foundation


enum HTTPMethod: String {
	// If there were more methods besides "GET" being used, they would go here to ensure type-safety when making a URLRequest
	case get = "GET"
}

enum HTTPErrors: Error {
	case errorReturned(Error)
	case noData
	case noDecode
}
