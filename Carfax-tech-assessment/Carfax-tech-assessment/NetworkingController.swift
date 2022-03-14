//
//  NetworkingController.swift
//  Carfax-tech-assessment
//
//  Created by William Shillingford on 3/11/22.
//

import Foundation
class NetworkingController {
	private let dataLoader: NetworkDataLoader

	init(dataLoader: NetworkDataLoader = URLSession.shared) {
		self.dataLoader = dataLoader
	}

	func createRequest(with url: String, httpMethod: HTTPMethod) -> URLRequest? {
		guard let url = URL(string: url) else { return nil }

		var request = URLRequest(url: url)
		request.httpMethod = httpMethod.rawValue

		return request
	}

	func getListOfVehicles(with request: URLRequest, completion: @escaping (Result<ListingContainer, Error>) -> Void) {
		dataLoader.loadData(using: request) { data, error in
			if let error = error {
				NSLog("Error with data task: \(error)")
				completion(.failure(HTTPErrors.errorReturned(error)))
			}

			guard let data = data else {
				NSLog("No Data to decode on line \(#line) in getListOfVehicles(_:)")
				completion(.failure(HTTPErrors.noData))
				return
			}

			let jsonDecoder = JSONDecoder()

			do {
				let listingContainer = try jsonDecoder.decode(ListingContainer.self, from: data)
				completion(.success(listingContainer))
			} catch {
				NSLog("Unable to decode data from JSON into type ListingContainer on line \(#line): \(error)")
				completion(.failure(HTTPErrors.noDecode))
			}
		}

	}
}
