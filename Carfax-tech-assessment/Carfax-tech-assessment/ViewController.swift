//
//  ViewController.swift
//  Carfax-tech-assessment
//
//  Created by William Shillingford on 3/10/22.
//

import UIKit

class ViewController: UIViewController {

	weak var collectionView: UICollectionView!
	let networkController = NetworkingController()
	var listingContainer: ListingContainer?

	override func loadView() {
		super.loadView()

		var constraints: [NSLayoutConstraint] = []
		defer { NSLayoutConstraint.activate(constraints) }

		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
		collectionView.translatesAutoresizingMaskIntoConstraints = false

		view.addSubview(collectionView)

		constraints += [collectionView.topAnchor.constraint(equalTo: view.topAnchor),
						collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
						collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
						collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)]

		self.collectionView = collectionView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		setUpCollectionView()
		loadAllCars()
	}

	private func setUpCollectionView() {
		collectionView.backgroundColor = .systemBackground
		collectionView.dataSource = self
		collectionView.delegate = self

		collectionView.register(CarListingCell.self, forCellWithReuseIdentifier: "MyCell")
	}

	private func loadAllCars() {
		guard let request = networkController.createRequest(with: BaseURL.url, httpMethod: .get) else {
			NSLog("Unable to create network request on line \(#line)")
			return
		}

		networkController.getListOfVehicles(with: request) { result in
			guard let container = try? result.get() else { return }
			DispatchQueue.main.async {
				self.listingContainer = container
				self.collectionView.reloadData()
			}
		}
	}

	fileprivate func createMakeAndYearLabelText(listing: Listing) -> String? {
		"\(listing.year) \(listing.make) \(listing.model)"
	}

	fileprivate func getCarPrice(price: Int) -> String? {
		let formatter = NumberFormatter()
		formatter.locale = Locale.current
		formatter.numberStyle = .currencyAccounting
		guard var formattedPrice = formatter.string(from: price as NSNumber) else { return nil }
		while formattedPrice.last == "0" {
			formattedPrice.removeLast()
		}

		if formattedPrice.last == "." {
			formattedPrice.removeLast()
		}
		return formattedPrice
	}

	fileprivate func getMileage(mileage: Int) -> String {
		"\(mileage) Mi"
	}

	fileprivate func getLocation(listing: Listing) -> String {
		"\(listing.city), \(listing.state)"
	}
}

extension ViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		listingContainer?.listings.count ?? 0
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as? CarListingCell,
			  let listingContainer = listingContainer
		else {
			return UICollectionViewCell()
		}
		let currentListing = listingContainer.listings[indexPath.item]
		cell.carMakeAndYearLabel.text = createMakeAndYearLabelText(listing: currentListing)

		if let photoURL = URL(string: currentListing.firstPhotoURL) {
			cell.imageView.load(url: photoURL)
		}

		if let formattedPrice = getCarPrice(price: currentListing.currentPrice) {
			cell.carPrice.text = formattedPrice
		}

		cell.mileageLabel.text = getMileage(mileage: currentListing.mileage)
		cell.locationLabel.text = getLocation(listing: currentListing)

		cell.callDealerButton.setTitle(currentListing.phone, for: .normal)

		return cell
	}
}

extension ViewController: UICollectionViewDelegate {

}

extension ViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView,
						layout collectionViewLayout: UICollectionViewLayout,
						sizeForItemAt indexPath: IndexPath) -> CGSize {

		return CGSize(width: collectionView.bounds.size.width, height: collectionView.bounds.size.width * 0.85)
	}
}
