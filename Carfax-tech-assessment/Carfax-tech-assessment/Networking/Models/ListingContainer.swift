//
//  Listings.swift
//  Carfax-tech-assessment
//
//  Created by William Shillingford on 3/11/22.
//

import Foundation

struct ListingContainer: Decodable, Equatable {
	static func == (lhs: ListingContainer, rhs: ListingContainer) -> Bool {
		return lhs.listings == rhs.listings
	}

	let listings: [Listing]
}
