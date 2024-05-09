//
//  PhotoCollectionViewCell.swift
//  Homework24
//
//  Created by Nodiko Gachava on 09.05.24.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    // MARK: - Variables
    static let identifier = "PhotoCollectionViewCell"
    
    // MARK: - UIComponents
    private let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "bird")
        iv.tintColor = .white
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    // MARK: - LifeCycle
    func configure(with image: UIImage) {
        self.photoImageView.image = image
        self.setupUI()
    }
    
    // MARK: - Setup 
    func setupUI() {
        backgroundColor = .red
        self.addSubview(photoImageView)
        
        NSLayoutConstraint.activate([
            photoImageView.topAnchor.constraint(equalTo: self.topAnchor),
            photoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            photoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            photoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.photoImageView.image = nil 
    }
}

