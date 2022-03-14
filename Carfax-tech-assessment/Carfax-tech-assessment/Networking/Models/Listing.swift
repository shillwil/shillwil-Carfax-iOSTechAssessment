//
//  Listing.swift
//  Carfax-tech-assessment
//
//  Created by William Shillingford on 3/11/22.
//

import Foundation

struct Listing: Codable, Equatable {
	let currentPrice: Int
	let city: String
	let phone: String
	let state: String
	let firstPhotoURL: String
	let make: String
	let mileage: Int
	let model: String
	let year: Int

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		currentPrice = try container.decode(Int.self, forKey: .currentPrice)

		let dealerContainer = try container.nestedContainer(keyedBy: CodingKeys.DealerKeys.self, forKey: .dealer)
		city = try dealerContainer.decode(String.self, forKey: .city)
		phone = try dealerContainer.decode(String.self, forKey: .phone)
		state = try dealerContainer.decode(String.self, forKey: .state)

		let imagesContainer = try container.nestedContainer(keyedBy: CodingKeys.ImagesKeys.self, forKey: .images)
		let firstPhotoContainer = try imagesContainer.nestedContainer(keyedBy: CodingKeys.ImagesKeys.FirstPhotoKeys.self, forKey: .firstPhoto)
		firstPhotoURL = try firstPhotoContainer.decode(String.self, forKey: .large)

		make = try container.decode(String.self, forKey: .make)
		mileage = try container.decode(Int.self, forKey: .mileage)
		model = try container.decode(String.self, forKey: .model)
		year = try container.decode(Int.self, forKey: .year)


		enum CodingKeys: String, CodingKey {
			case currentPrice
			case dealer
			case images
			case make
			case mileage
			case model
			case year

			enum DealerKeys: String, CodingKey {
				case city
				case phone
				case state
			}

			enum ImagesKeys: String, CodingKey {
				case firstPhoto

				enum FirstPhotoKeys: String, CodingKey {
					case large
				}
			}
		}
	}
}

struct Dealer: Codable {
	let city: String
	let phone: String
	let state: String
}

struct Images: Codable {
	let firstPhoto: String
}

struct Make: Codable {

}
