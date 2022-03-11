//
//  CarListingCell.swift
//  Carfax-tech-assessment
//
//  Created by William Shillingford on 3/10/22.
//

import UIKit

class CarListingCell: UICollectionViewCell {
	weak var imageView: UIImageView!
	weak var carMakeAndYearLabel: UILabel!
	weak var carPrice: UILabel!
	weak var mileageLabel: UILabel!
	weak var locationLabel: UILabel!

	weak var callDealerButton: UIButton!

	override init(frame: CGRect) {
		super.init(frame: frame)

		var constraints: [NSLayoutConstraint] = []
		defer { NSLayoutConstraint.activate(constraints) }

		let imageView = UIImageView()
		constraints += [imageView.topAnchor.constraint(equalTo: self.topAnchor),
						imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
						imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor)]

		self.imageView = imageView

		let carMakeAndYearLabel = UILabel()
		carMakeAndYearLabel.textAlignment = .left
		constraints += [carMakeAndYearLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
						carMakeAndYearLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),]

		self.carMakeAndYearLabel = carMakeAndYearLabel

		let hStack: UIStackView = UIStackView()
		hStack.axis = .horizontal

		let carPrice = UILabel()
		self.carPrice = carPrice
		hStack.addArrangedSubview(self.carPrice)

		let mileageLabel = UILabel()
		self.mileageLabel = mileageLabel
		hStack.addArrangedSubview(self.mileageLabel)

		let locationLabel = UILabel()
		self.locationLabel = locationLabel
		hStack.addArrangedSubview(self.locationLabel)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
