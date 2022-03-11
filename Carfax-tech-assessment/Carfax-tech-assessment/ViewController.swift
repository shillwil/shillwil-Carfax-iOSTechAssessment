//
//  ViewController.swift
//  Carfax-tech-assessment
//
//  Created by William Shillingford on 3/10/22.
//

import UIKit

class ViewController: UIViewController {

	weak var collectionView: UICollectionView!

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
	}

	private func setUpCollectionView() {
		collectionView.backgroundColor = .systemBackground
		collectionView.dataSource = self
		collectionView.delegate = self

		collectionView.register(CarListingCell.self, forCellWithReuseIdentifier: "MyCell")
	}
}

extension ViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		1 // TODO: This will be according to how many listings there are
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)

		return cell
	}
}

extension ViewController: UICollectionViewDelegate {

}
