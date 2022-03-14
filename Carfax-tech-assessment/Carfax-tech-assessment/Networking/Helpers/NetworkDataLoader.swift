//
//  NetworkDataLoader.swift
//  Carfax-tech-assessment
//
//  Created by William Shillingford on 3/14/22.
//

import Foundation

protocol NetworkDataLoader {
	func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
	func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
		dataTask(with: request) { data, _, error in
			completion(data, error)
		}.resume()
	}
}
