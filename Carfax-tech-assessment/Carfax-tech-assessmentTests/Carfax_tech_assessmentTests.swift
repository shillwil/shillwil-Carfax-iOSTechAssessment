//
//  Carfax_tech_assessmentTests.swift
//  Carfax-tech-assessmentTests
//
//  Created by William Shillingford on 3/10/22.
//

import XCTest
@testable import Carfax_tech_assessment

class Carfax_tech_assessmentTests: XCTestCase {
	func testDecodeCarListings() {
		let mock = MockDataLoader(data: carListingJSON, error: nil)
		let networkController = NetworkingController(dataLoader: mock)


		guard let request = networkController.createRequest(with: BaseURL.url, httpMethod: .get) else { return }
		networkController.getListOfVehicles(with: request) { result in
			XCTAssertNoThrow(result, "Result did not throw an error with .failure()")

			guard let container = try? result.get() else { return }
			XCTAssertTrue(container.listings.isEmpty == false)

			let firstListing = container.listings.first
			XCTAssertEqual(firstListing?.phone, "8334039932")
			XCTAssertEqual(firstListing?.year, 2017)
		}
	}
}
