//
//  GalleryViewController.swift
//  Homework24
//
//  Created by Nodiko Gachava on 08.05.24.
//

import UIKit

class GalleryViewController: UIViewController {
    // MARK: - Variables
    var images: [UIImage] = []
    
    // MARK: - UI Components
    private let photoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .systemBackground
        collectionView.register(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: PhotoCollectionViewCell.identifier)
        collectionView.showsVerticalScrollIndicator = false
        return collectionView
    }()
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setupUI()
        for _ in 0...200 {
            images.append(UIImage(named: "bird")!)
            images.append(UIImage(named: "bird2")!)
            images.append(UIImage(named: "bird3")!)
        }
        self.navigationItem.title = "API ვერ მომაქ ბიძი "
    }
    // MARK: - UI Setup
    func setupUI() {
        view.addSubview(photoCollectionView)
        photoCollectionView.delegate = self
        photoCollectionView.dataSource = self 
        
        NSLayoutConstraint.activate([
            photoCollectionView.topAnchor.constraint(equalTo: self.view.topAnchor),
            photoCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            photoCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            photoCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
        
        ])
    }
}

