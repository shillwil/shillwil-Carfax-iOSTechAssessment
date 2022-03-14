//
//  MockDataLoader.swift
//  Carfax-tech-assessmentTests
//
//  Created by William Shillingford on 3/14/22.
//

import Foundation
@testable import Carfax_tech_assessment

class MockDataLoader: NetworkDataLoader {

	let data: Data?
	let error: Error?
	private(set) var request: URLRequest? = nil

	init(data: Data?, error: Error?) {
		self.data = data
		self.error = error
	}

	func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
		self.request = request
		completion(data, error)
	}
}
