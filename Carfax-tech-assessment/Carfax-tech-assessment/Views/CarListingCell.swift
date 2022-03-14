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

		let stackView = UIStackView()
		stackView.axis = .vertical
		stackView.spacing = CarListingCellConstants.stackViewSpacing
		stackView.translatesAutoresizingMaskIntoConstraints = false
		addSubview(stackView)
//		stackView.distribution = .fill // TODO: Review for deletion

		NSLayoutConstraint.activate([stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
									 stackView.topAnchor.constraint(equalTo: topAnchor),
									 stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
									 stackView.bottomAnchor.constraint(equalTo: bottomAnchor)])

		let image = UIImage(systemName: "photo.artframe")

		let imageView = UIImageView(image: image)
		imageView.backgroundColor = .orange
//		imageView.setContentCompressionResistancePriority(.required, for: .vertical) // TODO: Review for deletion
		self.imageView = imageView
		stackView.addArrangedSubview(imageView)

		let labelStackView = UIStackView()
		labelStackView.axis = .vertical
		labelStackView.spacing = CarListingCellConstants.stackViewSpacing
		labelStackView.distribution = .fill
		labelStackView.isLayoutMarginsRelativeArrangement = true
		labelStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: .zero,
																		  leading: CarListingCellConstants.stackViewSpacing * 2,
																		  bottom: CarListingCellConstants.stackViewSpacing,
																		  trailing: CarListingCellConstants.stackViewSpacing * 2)
		stackView.addArrangedSubview(labelStackView)

		let carMakeAndYearLabel = UILabel()
		carMakeAndYearLabel.text = "2016 Kia Optima"
		carMakeAndYearLabel.font = .systemFont(ofSize: CarListingCellConstants.labelFontSize, weight: .bold)
		labelStackView.addArrangedSubview(carMakeAndYearLabel)
		self.carMakeAndYearLabel = carMakeAndYearLabel

		let hStack = UIStackView()
		labelStackView.addArrangedSubview(hStack)
		hStack.axis = .horizontal
		hStack.spacing = CarListingCellConstants.stackViewSpacing / 2

		let carPrice = UILabel()
		carPrice.text = "$28,560"
		carPrice.font = .systemFont(ofSize: CarListingCellConstants.labelFontSize, weight: .bold)
		self.carPrice = carPrice
		hStack.addArrangedSubview(carPrice)

		hStack.addArrangedSubview(makeLabelSeparator(ofSize: CarListingCellConstants.labelFontSize))

		let mileageLabel = UILabel()
		mileageLabel.text = "100k Mi"
		mileageLabel.font = .systemFont(ofSize: CarListingCellConstants.labelFontSize)
		self.mileageLabel = mileageLabel
		hStack.addArrangedSubview(mileageLabel)

		hStack.addArrangedSubview(makeLabelSeparator(ofSize: CarListingCellConstants.labelFontSize))

		let locationLabel = UILabel()
		locationLabel.text = "Anchorage, AK"
		locationLabel.font = .systemFont(ofSize: CarListingCellConstants.labelFontSize)
		self.locationLabel = locationLabel
		hStack.addArrangedSubview(locationLabel)

		let spacer = UIView()
		hStack.addArrangedSubview(spacer)

		// TODO: Turn into function that sets up dealerButton with the UIAction that initiates the Action sheet and ability to  initiate call or cancel call
		let dealerButton = UIButton()
		dealerButton.setTitle("(801) 867-5309", for: .normal)
		dealerButton.titleLabel?.font = .systemFont(ofSize: CarListingCellConstants.labelFontSize, weight: .bold)
		dealerButton.setTitleColor(.systemBlue, for: .normal)
		self.callDealerButton = dealerButton
		labelStackView.addArrangedSubview(dealerButton)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func makeLabelSeparator(ofSize size: CGFloat) -> UILabel {
		let labelSeparator = UILabel()
		labelSeparator.text = " | "
		labelSeparator.font = .systemFont(ofSize: size)
		return labelSeparator
	}
}
